{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   80,
   80,
   900,
   700
  ],
  "default_fontsize": 12.0,
  "default_fontname": "Arial",
  "gridsize": [
   15.0,
   15.0
  ],
  "boxes": [
   {
    "box": {
     "maxclass": "comment",
     "text": "heart_valve: one heart hit, built like a film-score heartbeat / soft kick. A sine whose pitch snaps down from f0 x punch to f0 in 30 ms (the audible 'b' of the hit), then sinks slowly to f0 x ratio, with a fast env^4 decay so hits stay separate. Plus a muffled noise thud (low-passed at f0 x thud_ratio) that reads even on small speakers. Args: f0 ratio dur_ms amp thud punch thud_ratio drive",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      2,
      840,
      62
     ],
     "fontsize": 12,
     "id": "obj-1"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "in 1",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      30,
      70,
      42,
      22
     ],
     "outlettype": [
      ""
     ],
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "t l l b",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      30,
      100,
      62,
      22
     ],
     "outlettype": [
      "",
      "",
      "bang"
     ],
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      600,
      135,
      30,
      22
     ],
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      650,
      270,
      30,
      22
     ],
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "thispoly~",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      600,
      305,
      75,
      22
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "busy while sounding, free again dur + 50 ms later",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      690,
      135,
      190,
      34
     ],
     "fontsize": 12,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "unpack f f f f f f f f",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      160,
      135,
      220,
      22
     ],
     "outlettype": [
      "float",
      "float",
      "float",
      "float",
      "float",
      "float",
      "float",
      "float"
     ],
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "+ 50.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600,
      200,
      49,
      22
     ],
     "outlettype": [
      "float"
     ],
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "delay",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600,
      235,
      49,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "t f f f f",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      160,
      170,
      75,
      22
     ],
     "outlettype": [
      "float",
      "float",
      "float",
      "float"
     ],
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "* 3.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      205,
      42,
      22
     ],
     "outlettype": [
      "float"
     ],
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "* 0.85",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      230,
      205,
      55,
      22
     ],
     "outlettype": [
      "float"
     ],
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "* 6.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      205,
      42,
      22
     ],
     "outlettype": [
      "float"
     ],
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack 165. 55. 47. 200.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      160,
      245,
      160,
      22
     ],
     "outlettype": [
      ""
     ],
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "$1, $2 30 $3 $4",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      160,
      280,
      113,
      22
     ],
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      160,
      315,
      49,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "pitch: snap down then sink",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      330,
      280,
      200,
      20
     ],
     "fontsize": 12,
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0, 1 3 0 $3",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      135,
      86,
      22
     ],
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      30,
      170,
      49,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      350,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      385,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      420,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "env^4 (body), env^8 (thud)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      450,
      180,
      20
     ],
     "fontsize": 12,
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "cycle~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      350,
      55,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      420,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-26"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "noise~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300,
      315,
      55,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-27"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "lores~ 300. 0.",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      300,
      350,
      100,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-28"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "lores~ 300. 0.",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      300,
      385,
      100,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      420,
      49,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      455,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-31"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 3.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      300,
      490,
      49,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-32"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "thud: noise low-passed at f0 x thud_ratio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      410,
      350,
      220,
      20
     ],
     "fontsize": 12,
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      530,
      49,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "tanh~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      160,
      565,
      49,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      600,
      49,
      22
     ],
     "outlettype": [
      "signal"
     ],
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "out~ 1",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      160,
      640,
      55,
      22
     ],
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "gentle saturation (drive 1-1.6) -> amp",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      230,
      565,
      260,
      20
     ],
     "fontsize": 12,
     "id": "obj-38"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      2
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      1
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      2
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      5
     ],
     "destination": [
      "obj-12",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      1
     ],
     "destination": [
      "obj-13",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      6
     ],
     "destination": [
      "obj-14",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      2
     ],
     "destination": [
      "obj-15",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      3
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      2
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-15",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      1
     ],
     "destination": [
      "obj-15",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-21",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-22",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-23",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-26",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-28",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-29",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      4
     ],
     "destination": [
      "obj-30",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-31",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      7
     ],
     "destination": [
      "obj-34",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      3
     ],
     "destination": [
      "obj-36",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   }
  ]
 }
}