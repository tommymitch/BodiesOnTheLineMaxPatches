// imu_body_euler.js
// For Max [js] or [v8]. Input: quaternion list "w x y z" from the x-IMU3.
// Output: list of pitch, roll, yaw (degrees, ZYX convention) in the dancer's body frame:
//   x = out of the chest (forward), y = dancer's left, z = up through the head.
//
// Messages:
//   list w x y z  - incoming quaternion
//   setforward    - dancer stands upright facing the front of the room:
//                   sets yaw to zero for that direction and trims roll/pitch to zero
//   setheading    - sets yaw only (keeps true gravity-referenced roll/pitch)
//   reset         - clears calibration

autowatch = 1;
inlets = 1;
outlets = 2; // 0: list "pitch roll yaw" (degrees), 1: corrected quaternion (w x y z)

var A = Math.SQRT1_2;
// Mounting offset: sensor +z out of chest, sensor +x up, so sensor -y points to the dancer's left
var qM = [0, A, 0, A];
var qH = [1, 0, 0, 0];     // heading correction (world frame, pre-multiplied)
var qTinv = [1, 0, 0, 0];  // tilt trim (body frame, post-multiplied)
var last = null;
var RAD2DEG = 180 / Math.PI;

function qmul(a, b) {
    return [
        a[0]*b[0] - a[1]*b[1] - a[2]*b[2] - a[3]*b[3],
        a[0]*b[1] + a[1]*b[0] + a[2]*b[3] - a[3]*b[2],
        a[0]*b[2] - a[1]*b[3] + a[2]*b[0] + a[3]*b[1],
        a[0]*b[3] + a[1]*b[2] - a[2]*b[1] + a[3]*b[0]
    ];
}

function conj(q) { return [q[0], -q[1], -q[2], -q[3]]; }

function normalise(q) {
    var n = Math.sqrt(q[0]*q[0] + q[1]*q[1] + q[2]*q[2] + q[3]*q[3]);
    if (n === 0) return [1, 0, 0, 0];
    return [q[0]/n, q[1]/n, q[2]/n, q[3]/n];
}

// ZYX (yaw-pitch-roll) Euler angles in radians
function euler(q) {
    var w = q[0], x = q[1], y = q[2], z = q[3];
    var roll = Math.atan2(2*(w*x + y*z), 1 - 2*(x*x + y*y));
    var s = 2*(w*y - z*x);
    if (s > 1) s = 1;
    if (s < -1) s = -1;
    var pitch = Math.asin(s);
    var yaw = Math.atan2(2*(w*z + x*y), 1 - 2*(y*y + z*z));
    return [roll, pitch, yaw];
}

function headingCorrection(qBody) {
    var h = -euler(qBody)[2] / 2;
    return [Math.cos(h), 0, 0, Math.sin(h)];
}

function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 4) return;
    last = normalise(a);
    var q = qmul(qmul(qH, qmul(last, qM)), qTinv);
    var e = euler(q);
    outlet(1, q);
    outlet(0, [e[1] * RAD2DEG, e[0] * RAD2DEG, e[2] * RAD2DEG]);
}

function setforward() {
    if (!last) { post("imu_body_euler: no data received yet\n"); return; }
    var qb = qmul(last, qM);
    qH = headingCorrection(qb);
    qTinv = conj(qmul(qH, qb)); // remaining tilt at the calibration pose
}

function setheading() {
    if (!last) { post("imu_body_euler: no data received yet\n"); return; }
    qTinv = [1, 0, 0, 0];
    qH = headingCorrection(qmul(last, qM));
}

function reset() {
    qH = [1, 0, 0, 0];
    qTinv = [1, 0, 0, 0];
}
