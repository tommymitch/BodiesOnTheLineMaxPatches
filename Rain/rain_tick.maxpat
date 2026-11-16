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
   760,
   560
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
     "text": "rain_tick: a drop tapping glass. A very short bright tick; the main patch adds the resonant pane. Args: freq amp dur pan",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      2,
      620,
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
     "text": "unpack f f f f",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      260,
      140,
      110,
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
     "id": "obj-10",
     "maxclass": "message",
     "text": "1, 0 $3",
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
     "id": "obj-14",
     "maxclass": "newobj",
     "text": "cross~ 2500.",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      130,
      210,
      96,
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
     "id": "obj-15",
     "maxclass": "newobj",
     "text": "cycle~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      260,
      210,
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
     "text": "*~ 0.4",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      260,
      245,
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
     "id": "obj-17",
     "maxclass": "newobj",
     "text": "*~",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      290,
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
     "id": "obj-18",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      325,
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
     "id": "obj-19",
     "maxclass": "newobj",
     "text": "+ 60.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      420,
      175,
      47,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "text": "delay",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      420,
      205,
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
     "id": "obj-21",
     "maxclass": "newobj",
     "text": "t f f",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      230,
      370,
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
     "id": "obj-22",
     "maxclass": "newobj",
     "text": "expr cos($f1*1.570796)",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      150,
      400,
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
     "id": "obj-23",
     "maxclass": "newobj",
     "text": "expr sin($f1*1.570796)",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      320,
      400,
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
     "id": "obj-24",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      30,
      440,
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
     "id": "obj-25",
     "maxclass": "newobj",
     "text": "*~ 0.",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      150,
      440,
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
     "id": "obj-26",
     "maxclass": "newobj",
     "text": "out~ 1",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30,
      480,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "text": "out~ 2",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      480,
      54,
      22
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "comment",
     "text": "equal-power pan",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      280,
      445,
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
      "obj-13",
      0
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
      "obj-9",
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
      "obj-14",
      1
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
      "obj-12",
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
      "obj-9",
      1
     ],
     "destination": [
      "obj-18",
      1
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
      "obj-5",
      0
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
      "obj-21",
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
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
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
      0
     ],
     "destination": [
      "obj-24",
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
      "obj-25",
      1
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
      "obj-24",
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
      "obj-25",
      0
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
      "obj-26",
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
      "obj-27",
      0
     ]
    }
   }
  ]
 }
}