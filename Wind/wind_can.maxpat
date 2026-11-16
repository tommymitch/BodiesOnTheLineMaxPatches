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
   820,
   960
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
     "text": "wind_can: a can rolling past. Each revolution gives a sharp bump (the seam), plus rough ground noise, exciting four can modes (after Farnell). Pans across while it rolls. Args: rev_hz hold_ms amp pan_start pan_end size",
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
     "text": "unpack f f f f f f",
     "numinlets": 1,
     "numoutlets": 6,
     "patching_rect": [
      330,
      140,
      138,
      22
     ],
     "outlettype": [
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
     "text": "0, $3 400 $3 $2 0 1200",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      30,
      140,
      168,
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
     "maxclass": "message",
     "text": "$4, $5 $2",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      190,
      140,
      77,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "text": "line~",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      190,
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
     "id": "obj-14",
     "maxclass": "newobj",
     "text": "rand~ 1.5",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      330,
      210,
      75,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "text": "*~ 0.3",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      240,
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
     "id": "obj-16",
     "maxclass": "newobj",
     "text": "+~ 1.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      270,
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
     "id": "obj-17",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      300,
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
     "id": "obj-18",
     "maxclass": "newobj",
     "text": "phasor~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      330,
      61,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "text": "*~ -1.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      360,
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
     "id": "obj-20",
     "maxclass": "newobj",
     "text": "+~ 1.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      390,
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
     "id": "obj-21",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      420,
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
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      450,
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
     "id": "obj-23",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      480,
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
     "id": "obj-24",
     "maxclass": "newobj",
     "text": "*~ 0.6",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      330,
      510,
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
     "id": "obj-25",
     "maxclass": "comment",
     "text": "(1 - phase)^8 = a sharp bump once per revolution",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420,
      450,
      200,
      33
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "text": "noise~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      520,
      510,
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
     "id": "obj-27",
     "maxclass": "newobj",
     "text": "lores~ 600. 0.",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      520,
      540,
      110,
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
     "text": "*~ 0.25",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      520,
      570,
      61,
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
     "text": "t f f f f",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      30,
      560,
      75,
      22
     ],
     "outlettype": [
      "float",
      "float",
      "float",
      "float"
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      690,
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
     "id": "obj-31",
     "maxclass": "newobj",
     "text": "* 358.0",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      590,
      61,
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
     "text": "reson~ 0.4 358.0 30.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      30,
      630,
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
     "id": "obj-33",
     "maxclass": "newobj",
     "text": "* 426.0",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      160,
      590,
      61,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "text": "reson~ 0.3 426.0 30.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      160,
      630,
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
     "id": "obj-35",
     "maxclass": "newobj",
     "text": "* 1748.0",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      290,
      590,
      68,
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
     "text": "reson~ 0.2 1748.0 30.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      290,
      630,
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
     "id": "obj-37",
     "maxclass": "newobj",
     "text": "* 3000.0",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      420,
      590,
      68,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "text": "reson~ 0.2 3000.0 30.",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      420,
      630,
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
     "id": "obj-39",
     "maxclass": "newobj",
     "text": "*~ 4.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      720,
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
     "id": "obj-40",
     "maxclass": "newobj",
     "text": "*~ 0.25",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      190,
      760,
      61,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "text": "cos~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      190,
      790,
      40,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "text": "-~ 0.25",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      280,
      790,
      61,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "text": "cos~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      280,
      820,
      40,
      22
     ],
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      850,
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
     "id": "obj-45",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      120,
      850,
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
     "id": "obj-46",
     "maxclass": "newobj",
     "text": "out~ 1",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      890,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "newobj",
     "text": "out~ 2",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      120,
      890,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "text": "+ 2500.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      640,
      140,
      61,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-49",
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
      "obj-7",
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
      "obj-13",
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
      0
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
      "obj-23",
      0
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
      "obj-26",
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
      "obj-9",
      5
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
      "obj-32",
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
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
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
      "obj-34",
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
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      2
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
      "obj-36",
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
      "obj-36",
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
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      3
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
      "obj-37",
      0
     ],
     "destination": [
      "obj-38",
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
      "obj-38",
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
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
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
      "obj-11",
      0
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
      "obj-39",
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
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-44",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-45",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-47",
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
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   }
  ]
 }
}