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
   620
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
     "id": "obj-1",
     "maxclass": "comment",
     "text": "wind_knock: one impact. A noise burst excites three resonant modes (f0, 2.37 f0, 4.11 f0), plus an unfiltered click. Optional rebound (a shutter bouncing back, a door latch rattling). Args: f0 q amp dur pan bright rebound_ms rebound_amp",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      2,
      700,
      33
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "text": "in 1",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      30,
      30,
      40,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "text": "t l b",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      30,
      65,
      47,
      22
     ],
     "outlettype": [
      "",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "message",
     "text": "1",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      330,
      100,
      30,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "message",
     "text": "0",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      390,
      100,
      30,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "text": "thispoly~",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      330,
      135,
      75,
      22
     ],
     "outlettype": [
      "signal",
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "text": "t l l l",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      30,
      100,
      61,
      22
     ],
     "outlettype": [
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "comment",
     "text": "marks this voice busy, then free once its sound has finished",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      100,
      220,
      33
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "text": "unpack f f f f f f f f",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      300,
      140,
      166,
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
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "message",
     "text": "1, 0 $4",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      140,
      63,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      30,
      175,
      47,
      22
     ],
     "outlettype": [
      "signal",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      210,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "text": "t f f",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      560,
      210,
      47,
      22
     ],
     "outlettype": [
      "float",
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "text": "> 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      240,
      40,
      22
     ],
     "outlettype": [
      "int"
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "text": "gate 1",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560,
      270,
      54,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "text": "delay",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560,
      300,
      47,
      22
     ],
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "text": "f",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560,
      330,
      36,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "message",
     "text": "$1, 0 25",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      560,
      360,
      70,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "comment",
     "text": "rebound: re-fires the envelope quieter after rebound_ms",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      640,
      330,
      200,
      33
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "text": "noise~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      130,
      175,
      54,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      250,
      36,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "newobj",
     "text": "t f f f",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      300,
      180,
      61,
      22
     ],
     "outlettype": [
      "float",
      "float",
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "newobj",
     "text": "* 2.37",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380,
      210,
      54,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "newobj",
     "text": "* 4.11",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      460,
      210,
      54,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "text": "reson~ 1. 100. 8.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      30,
      290,
      120,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "text": "reson~ 0.6 237. 8.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      160,
      290,
      120,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "text": "reson~ 0.35 411. 8.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      290,
      290,
      125,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      430,
      290,
      47,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "text": "*~ 3.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      330,
      47,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      365,
      47,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "newobj",
     "text": "+ 400.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      140,
      54,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "text": "delay",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      170,
      47,
      22
     ],
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "text": "t f f",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      230,
      410,
      47,
      22
     ],
     "outlettype": [
      "float",
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "text": "expr cos($f1*1.570796)",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      150,
      440,
      166,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "text": "expr sin($f1*1.570796)",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      320,
      440,
      166,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      480,
      47,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      150,
      480,
      47,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "text": "out~ 1",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      520,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "text": "out~ 2",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      520,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "comment",
     "text": "equal-power pan",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      280,
      485,
      120,
      20
     ],
     "fontsize": 12
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
      1
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
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
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
      "obj-7",
      1
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
      "obj-11",
      0
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
      "obj-11",
      0
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
      "obj-9",
      6
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
      1
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
      "obj-14",
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
      "obj-13",
      0
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
      "obj-9",
      7
     ],
     "destination": [
      "obj-17",
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
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
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
      "obj-12",
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
      "obj-9",
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
      "obj-22",
      1
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
      2
     ],
     "destination": [
      "obj-24",
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
      "obj-25",
      2
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
      "obj-26",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
     ],
     "destination": [
      "obj-27",
      2
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
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      1
     ],
     "destination": [
      "obj-25",
      3
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
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      1
     ],
     "destination": [
      "obj-26",
      3
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
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      1
     ],
     "destination": [
      "obj-27",
      3
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
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      5
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
      "obj-25",
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
      "obj-26",
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
      "obj-27",
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
      "obj-28",
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
      "obj-9",
      2
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
      "obj-9",
      3
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
      "obj-32",
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
      "obj-9",
      4
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
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
      "obj-33",
      1
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
      "obj-34",
      0
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
      "obj-35",
      0
     ],
     "destination": [
      "obj-37",
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
      "obj-36",
      0
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
      "obj-37",
      0
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   }
  ]
 }
}