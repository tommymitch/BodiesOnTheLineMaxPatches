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
   40,
   60,
   1150,
   680
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
     "text": "Procedural Fire",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      10,
      300,
      32
     ],
     "fontsize": 22,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "text": "Every control is 0-1. Size is the macro: candle -> campfire -> bonfire (louder, lower roar, more crackles). Draught fans the flames. A shared flicker signal drives the roar and crackle rate. The voice file fire_crackle must stay in the same folder as this patch.",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      44,
      1000,
      33
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      14,
      87,
      266,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "comment",
     "text": "GLOBAL",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      90,
      254,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      20,
      115,
      56,
      48
     ],
     "varname": "fire_size",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_size",
       "parameter_shortname": "Size",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-5"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "text": "s fire_size",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      86,
      115,
      56,
      48
     ],
     "varname": "fire_draught",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_draught",
       "parameter_shortname": "Draught",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-7"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "text": "s fire_draught",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      86,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      152,
      115,
      56,
      48
     ],
     "varname": "fire_width",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_width",
       "parameter_shortname": "Width",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-9"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "text": "s fire_width",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      152,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      218,
      115,
      56,
      48
     ],
     "varname": "fire_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_volume",
       "parameter_shortname": "Volume",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-11"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "text": "s fire_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      218,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      302,
      87,
      200,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "text": "ROAR",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      308,
      90,
      188,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      308,
      115,
      56,
      48
     ],
     "varname": "fire_roarlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_roarlevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-15"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "text": "s fire_roarlevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      308,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      374,
      115,
      56,
      48
     ],
     "varname": "fire_depth",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_depth",
       "parameter_shortname": "Depth",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-17"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "text": "s fire_depth",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      374,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      440,
      115,
      56,
      48
     ],
     "varname": "fire_flutter",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_flutter",
       "parameter_shortname": "Flutter",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-19"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "text": "s fire_flutter",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      440,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      524,
      87,
      200,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-21"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "comment",
     "text": "HISS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      90,
      188,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      530,
      115,
      56,
      48
     ],
     "varname": "fire_hisslevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_hisslevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-23"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "newobj",
     "text": "s fire_hisslevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      596,
      115,
      56,
      48
     ],
     "varname": "fire_hissbright",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_hissbright",
       "parameter_shortname": "Bright",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-25"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "text": "s fire_hissbright",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      596,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      662,
      115,
      56,
      48
     ],
     "varname": "fire_sputter",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_sputter",
       "parameter_shortname": "Sputter",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-27"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "text": "s fire_sputter",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      662,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      14,
      237,
      266,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-29"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "comment",
     "text": "CRACKLE",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      240,
      254,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      20,
      265,
      56,
      48
     ],
     "varname": "fire_cracklevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_cracklevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-31"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "text": "s fire_cracklevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      86,
      265,
      56,
      48
     ],
     "varname": "fire_crackdensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_crackdensity",
       "parameter_shortname": "Density",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-33"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "text": "s fire_crackdensity",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      86,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      152,
      265,
      56,
      48
     ],
     "varname": "fire_clusters",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_clusters",
       "parameter_shortname": "Clusters",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-35"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "text": "s fire_clusters",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      152,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      218,
      265,
      56,
      48
     ],
     "varname": "fire_crackpitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_crackpitch",
       "parameter_shortname": "Pitch",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-37"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "text": "s fire_crackpitch",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      218,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      302,
      237,
      200,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-39"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "comment",
     "text": "POPS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      308,
      240,
      188,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      308,
      265,
      56,
      48
     ],
     "varname": "fire_poplevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_poplevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-41"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "text": "s fire_poplevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      308,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      374,
      265,
      56,
      48
     ],
     "varname": "fire_popdensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_popdensity",
       "parameter_shortname": "Density",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-43"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "text": "s fire_popdensity",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      374,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      440,
      265,
      56,
      48
     ],
     "varname": "fire_wood",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_wood",
       "parameter_shortname": "Wood",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-45"
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "text": "s fire_wood",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      440,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      524,
      237,
      134,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-47"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "comment",
     "text": "EMBERS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      240,
      122,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      530,
      265,
      56,
      48
     ],
     "varname": "fire_emberlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_emberlevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-49"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "text": "s fire_emberlevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      596,
      265,
      56,
      48
     ],
     "varname": "fire_fizz",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_fizz",
       "parameter_shortname": "Fizz",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-51"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "text": "s fire_fizz",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      596,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      680,
      237,
      134,
      126
     ],
     "bgcolor": [
      0.5,
      0.5,
      0.5,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-53"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "comment",
     "text": "SETTLE",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      686,
      240,
      122,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      686,
      265,
      56,
      48
     ],
     "varname": "fire_settlelevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_settlelevel",
       "parameter_shortname": "Level",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-55"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "text": "s fire_settlelevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      686,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      752,
      265,
      56,
      48
     ],
     "varname": "fire_settlerate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "fire_settlerate",
       "parameter_shortname": "Rate",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-57"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "text": "s fire_settlerate",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      752,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "text": "r fire_flickc",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      820,
      120,
      103,
      22
     ],
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "orientation": 1,
     "floatoutput": 1,
     "size": 1.0,
     "ignoreclick": 1,
     "patching_rect": [
      820,
      150,
      200,
      22
     ],
     "id": "obj-60"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "comment",
     "text": "live flicker",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      820,
      175,
      120,
      20
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p flame",
     "numinlets": 0,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      20,
      390,
      110,
      22
     ],
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
       60,
       60,
       820,
       480
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
         "text": "FLAME: the shared flicker signal (0-1) the roar and crackles follow. Slow drift + fast flicker; Flutter sets the flicker speed, Draught makes it faster and wilder. Also makes a random \"cluster\" value so crackles come in bursts, like pockets of sap.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          760,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_flutter",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
          110,
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
         "text": "r fire_draught",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          180,
          50,
          110,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          80,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "expr (2.+12.*$f1)*(1.+$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          110,
          170,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "comment",
         "text": "flicker Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          210,
          110,
          80,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr 0.6*(0.5+$f1)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          80,
          138,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "message",
         "text": "$1 200",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          330,
          110,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          330,
          140,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "rand~ 0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          200,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "*~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          230,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "rand~ 6.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          180,
          200,
          68,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          230,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "*~ 0.45",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          270,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "+~ 0.55",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          300,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "clip~ 0. 1.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          330,
          89,
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
         "text": "send~ fire_flick",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          370,
          124,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "snapshot~ 30",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          370,
          96,
          22
         ],
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "s fire_flickc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          180,
          400,
          103,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "rand~ 0.4",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          400,
          200,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          230,
          89,
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
          400,
          260,
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
         "text": "*~ 6.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "snapshot~ 50",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          370,
          96,
          22
         ],
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "s fire_clusterc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          400,
          400,
          117,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-26",
         "maxclass": "comment",
         "text": "cluster: max(rand,0)^2 x 6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          490,
          260,
          180,
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
          "obj-4",
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
          "obj-4",
          1
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
          "obj-5",
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
          0
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
          0
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
          "obj-5",
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
          "obj-9",
          0
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
          "obj-11",
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
          "obj-16",
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
          "obj-24",
          0
         ],
         "destination": [
          "obj-25",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-62"
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "comment",
     "text": "<- shared flicker + crackle clustering (no audio out)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      390,
      340,
      20
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p roar",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      20,
      430,
      110,
      22
     ],
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
       60,
       60,
       820,
       640
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
         "text": "ROAR: the body of the flames. Lowpassed noise plus Farnell's \"lapping\" (a 30 Hz band of noise, overdriven and clipped, giving soft flappy bursts). Loudness follows flicker^2. Depth = lower and darker; bigger fires are lower.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          760,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "receive~ fire_flick",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
          145,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          80,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r fire_depth",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
          50,
          96,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          370,
          50,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "r fire_roarlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          470,
          50,
          124,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "r fire_draught",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          50,
          110,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          80,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr 1000.*exp(-$f1*1.8)*(1.3-0.6*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          110,
          230,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "pak f f f",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          470,
          140,
          75,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*(0.25+0.75*$f2)*(0.8+0.6*$f3)*1.5",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          470,
          170,
          280,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          470,
          200,
          49,
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
          470,
          230,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          280,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "lores~ 400. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          310,
          117,
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
         "text": "lores~ 400. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          340,
          117,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          160,
          280,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "reson~ 1. 30. 5.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          160,
          310,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "*~ 40.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          160,
          340,
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
         "text": "clip~ -0.9 0.9",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          160,
          370,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "cross~ 25.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          160,
          400,
          82,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "lores~ 600. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          160,
          430,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          160,
          460,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          500,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          530,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          570,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-26"
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          280,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "lores~ 400. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          310,
          117,
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
         "text": "lores~ 400. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          340,
          117,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          430,
          280,
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
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "reson~ 1. 30. 5.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          430,
          310,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "*~ 40.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          340,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "clip~ -0.9 0.9",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          430,
          370,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "cross~ 25.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          430,
          400,
          82,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "lores~ 600. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          430,
          430,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          460,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          500,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          530,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          570,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-39"
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "comment",
         "text": "lapping: 30 Hz noise -> x40 -> clip -> remove DC -> lowpass",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          160,
          510,
          360,
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
          "obj-2",
          0
         ],
         "destination": [
          "obj-3",
          1
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
          "obj-8",
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
          "obj-8",
          1
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
          "obj-9",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-6",
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
          "obj-5",
          0
         ],
         "destination": [
          "obj-10",
          1
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
          2
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
          "obj-9",
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
          "obj-9",
          0
         ],
         "destination": [
          "obj-16",
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
          "obj-21",
          1
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
          "obj-16",
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
          "obj-3",
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
          "obj-24",
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
          "obj-13",
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
          "obj-9",
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
          "obj-9",
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
          "obj-34",
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
          "obj-29",
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
          "obj-37",
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
          "obj-37",
          1
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
          "obj-38",
          1
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
          "obj-39",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-64"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "comment",
     "text": "Flame body + lapping",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p hiss",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      185,
      430,
      110,
      22
     ],
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
       60,
       60,
       820,
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
         "id": "obj-1",
         "maxclass": "comment",
         "text": "HISS: gas and steam escaping. Highpassed noise whose loudness is \"sputtered\" by a random envelope raised to the 4th power (Farnell). Sputter = how bursty, Draught = how fast.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          760,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_hissbright",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
          131,
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
         "text": "expr 1500.*exp($f1*1.7)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          80,
          173,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r fire_sputter",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          50,
          110,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "expr $f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          80,
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
         "id": "obj-6",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          200,
          140,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "r fire_sputter",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          50,
          110,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr 1.-$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          80,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          330,
          110,
          49,
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
          330,
          140,
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
         "text": "r fire_draught",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          480,
          50,
          110,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "expr 4.+$f1*10.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          480,
          80,
          117,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "expr (4.+$f1*10.)*1.13",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          80,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "r fire_hisslevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          480,
          130,
          124,
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
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          130,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          480,
          160,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*(0.3+0.7*$f2)*0.6",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          480,
          190,
          200,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          480,
          220,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          480,
          250,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "rand~ 6.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          150,
          300,
          68,
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
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
          330,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
          390,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "*~ 5.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
          450,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          150,
          510,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          300,
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
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "cross~ 3000.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          30,
          330,
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
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          550,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          580,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          620,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-33"
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "rand~ 6.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          300,
          68,
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
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          330,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          390,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "*~ 5.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          450,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          510,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          300,
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
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "cross~ 3000.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          300,
          330,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          550,
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
          300,
          580,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          620,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-46"
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "comment",
         "text": "envelope = (1-Sputter) + Sputter x 5 x rand^4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          160,
          540,
          300,
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
          "obj-4",
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
          "obj-6",
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
          "obj-8",
          0
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
          "obj-11",
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
          "obj-12",
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
          "obj-15",
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
          "obj-16",
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
          "obj-13",
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
          "obj-23",
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
          "obj-24",
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
          "obj-25",
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
          "obj-26",
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
          "obj-7",
          0
         ],
         "destination": [
          "obj-27",
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
          "obj-11",
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
          "obj-3",
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
          1
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
          "obj-28",
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
          "obj-20",
          0
         ],
         "destination": [
          "obj-32",
          1
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
          "obj-33",
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
          "obj-36",
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
          "obj-37",
          1
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
          1
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
          "obj-39",
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
          "obj-40",
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
          "obj-40",
          1
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
          "obj-11",
          0
         ],
         "destination": [
          "obj-41",
          1
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
          "obj-3",
          0
         ],
         "destination": [
          "obj-43",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-43",
          1
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
          "obj-44",
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
          "obj-20",
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
          "obj-45",
          0
         ],
         "destination": [
          "obj-46",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-66"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "comment",
     "text": "Sputtering gas hiss",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      185,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p crackle",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      350,
      430,
      110,
      22
     ],
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
       60,
       60,
       1500,
       820
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
         "text": "CRACKLE: small sharp crackles. Rate follows Density, Size and the live flicker; Clusters makes them come in bursts; pops and settling logs (fire_burst) set off extra flurries. Most crackles are tiny, a few are loud (amp ~ U^3).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          820,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_crackdensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
          145,
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
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          140,
          70,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r fire_flickc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          220,
          70,
          103,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r fire_clusters",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          310,
          70,
          117,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "r fire_clusterc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          400,
          70,
          117,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "r fire_burst",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          520,
          20,
          96,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "message",
         "text": "$1, 0 $2",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          520,
          45,
          70,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "line 0. 30",
         "numinlets": 3,
         "numoutlets": 2,
         "patching_rect": [
          520,
          70,
          82,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "poly~ fire_crackle 32",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          540,
          160,
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
         "id": "obj-11",
         "maxclass": "comment",
         "text": "rate/sec = Density^2 x 150 x size x (0.3+flicker) x cluster + burst x 80",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          620,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "pak f f f f f f",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
          190,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*150.*(0.2+0.8*$f2)*(0.3+$f3)*((1.-$f4)+$f4*$f5)+$f6*80.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          400,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          30,
          160,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "> 0.02",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          190,
          54,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          130,
          68,
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
         "text": "delay 200",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          160,
          75,
          22
         ],
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          190,
          47,
          22
         ],
         "outlettype": [
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          220,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "expr -log(($f1+1.)/10001.)*1000./($f2+0.0001)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          250,
          327,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "clip 1. 500.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          280,
          96,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "comment",
         "text": "<- next wait (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          280,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          250,
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
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          460,
          285,
          180,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "pack f f f f f f",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          220,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "expr 1500.*exp($f2*2.)*exp((($f1/10000.)-0.5)*1.6)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "r fire_crackpitch",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          510,
          355,
          95,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "comment",
         "text": "freq Hz (Pitch)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "expr 2.+($f1/10000.)*6.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          390,
          140,
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
         "maxclass": "comment",
         "text": "Q",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "expr (0.05+0.95*($f1/10000.)*($f1/10000.)*($f1/10000.))*0.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          760,
          390,
          140,
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
         "maxclass": "comment",
         "text": "amp (mostly small)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          910,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "expr 0.5+($f1/10000.)*($f1/10000.)*4.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          910,
          390,
          140,
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
         "maxclass": "comment",
         "text": "dur ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1060,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "expr 0.3+($f1/10000.)*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "comment",
         "text": "click",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1210,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-45",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          168,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "r fire_cracklevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          600,
          131,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          630,
          124,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          660,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          690,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          700,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          700,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          740,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-52"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          740,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-53"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-7",
          0
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
          0
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
          "obj-2",
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
          "obj-3",
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
          "obj-4",
          0
         ],
         "destination": [
          "obj-12",
          2
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
          "obj-12",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-6",
          0
         ],
         "destination": [
          "obj-12",
          4
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
          "obj-12",
          5
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
          "obj-14",
          1
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
          "obj-14",
          0
         ],
         "destination": [
          "obj-20",
          1
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
          "obj-21",
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
          "obj-15",
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
          "obj-18",
          1
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
          "obj-28",
          0
         ],
         "destination": [
          "obj-27",
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
          "obj-25",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-24",
          1
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
          "obj-31",
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
          "obj-24",
          2
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
          "obj-34",
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
          "obj-24",
          3
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
          "obj-25",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-24",
          4
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
          "obj-39",
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
          "obj-25",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-24",
          5
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
          "obj-43",
          0
         ],
         "destination": [
          "obj-25",
          5
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
          "obj-45",
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
          "obj-10",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-46",
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
          "obj-47",
          0
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
          "obj-10",
          0
         ],
         "destination": [
          "obj-50",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-10",
          1
         ],
         "destination": [
          "obj-51",
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
          "obj-50",
          1
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
          "obj-51",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-50",
          0
         ],
         "destination": [
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-51",
          0
         ],
         "destination": [
          "obj-53",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-68"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "comment",
     "text": "Crackles (poly~ fire_crackle)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      350,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p pops",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      515,
      430,
      110,
      22
     ],
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
       60,
       60,
       1500,
       820
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
         "text": "POPS: bigger wood pops and snaps (trapped steam bursting). Wood = lower, more resonant. Each pop sets off a small flurry of crackles.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          760,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_popdensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
          131,
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
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          160,
          70,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "poly~ fire_crackle 8",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          540,
          160,
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
         "id": "obj-5",
         "maxclass": "comment",
         "text": "rate/sec = Density^2 x 3 x size",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          620,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
          90,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*3.*(0.3+0.7*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          400,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          30,
          160,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "> 0.02",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          190,
          54,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          130,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "delay 200",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          160,
          75,
          22
         ],
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          190,
          47,
          22
         ],
         "outlettype": [
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          220,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "expr -log(($f1+1.)/10001.)*1000./($f2+0.0001)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          250,
          327,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "clip 1. 500.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          280,
          96,
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
         "maxclass": "comment",
         "text": "<- next wait (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          280,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          250,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          460,
          285,
          180,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "pack f f f f f f",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          220,
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
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "expr 900.*exp(-$f2*1.5)*(0.8+($f1/10000.)*0.4)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "r fire_wood",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          510,
          355,
          95,
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
         "maxclass": "comment",
         "text": "freq Hz (Wood)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "expr 3.+$f2*8.*(0.5+($f1/10000.))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "r fire_wood",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          660,
          355,
          95,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "comment",
         "text": "Q (Wood)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "expr 0.4+($f1/10000.)*0.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          760,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "comment",
         "text": "amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          910,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "expr 3.+($f1/10000.)*9.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          910,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-33",
         "maxclass": "comment",
         "text": "dur ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          390,
          140,
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
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1060,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "expr 0.4+($f1/10000.)*0.4",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-39",
         "maxclass": "comment",
         "text": "click",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1210,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          168,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "message",
         "text": "0.4 800",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          300,
          290,
          63,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "s fire_burst",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          320,
          96,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "comment",
         "text": "flurry of crackles",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          320,
          120,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "r fire_poplevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          600,
          117,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          630,
          124,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          660,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          690,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          700,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          700,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          740,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-50"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          740,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-51"
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
          "obj-6",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-6",
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
          0
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
          1
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
          "obj-8",
          0
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
          "obj-11",
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
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-12",
          1
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
          "obj-22",
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
          "obj-19",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          1
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
          "obj-24",
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
          "obj-26",
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
          "obj-25",
          0
         ],
         "destination": [
          "obj-19",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          2
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
          "obj-29",
          0
         ],
         "destination": [
          "obj-19",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
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
          "obj-19",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          4
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
          "obj-19",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          5
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
          "obj-19",
          5
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
          "obj-4",
          0
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
          "obj-41",
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
          "obj-42",
          0
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
          "obj-45",
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
          "obj-46",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-46",
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
          "obj-4",
          0
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
          "obj-4",
          1
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
          "obj-47",
          0
         ],
         "destination": [
          "obj-48",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          0
         ],
         "destination": [
          "obj-49",
          1
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
          "obj-50",
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
          "obj-51",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-70"
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "comment",
     "text": "Wood pops",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      515,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p embers",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      680,
      430,
      110,
      22
     ],
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
       60,
       60,
       760,
       480
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
         "text": "EMBERS: fine frizzle of glowing embers. A dense random patter of single-sample impulses, highpassed. Fizz = how dense.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          700,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_fizz",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
          89,
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
         "text": "expr 1.-2.*(50.+3000.*$f1*$f1)/44100.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          80,
          240,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r fire_emberlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          300,
          50,
          131,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          430,
          50,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          80,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*(0.3+0.7*$f2)*2.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          110,
          200,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          300,
          140,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          300,
          170,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          230,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": ">~ 0.99",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          260,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          120,
          260,
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
         "id": "obj-13",
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "cross~ 4000.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          30,
          320,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          360,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          400,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-16"
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          230,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": ">~ 0.99",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          260,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          390,
          260,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "cross~ 4000.",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          300,
          320,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          360,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          400,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-23"
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-6",
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
          0
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
          0
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
          "obj-3",
          0
         ],
         "destination": [
          "obj-11",
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
          "obj-13",
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
          "obj-14",
          1
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
          "obj-9",
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
          "obj-3",
          0
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
          "obj-18",
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
          "obj-19",
          0
         ],
         "destination": [
          "obj-20",
          1
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
          "obj-21",
          1
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
          "obj-9",
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
       }
      ]
     },
     "id": "obj-72"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "comment",
     "text": "Ember fizz",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      680,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p settle",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      845,
      430,
      110,
      22
     ],
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
       60,
       60,
       1500,
       820
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
         "text": "SETTLE: now and then a log shifts or collapses: a low thump, followed by a big flurry of crackles.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          760,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r fire_settlerate",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
          131,
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
         "text": "r fire_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          160,
          70,
          89,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "poly~ fire_crackle 4",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          540,
          160,
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
         "id": "obj-5",
         "maxclass": "comment",
         "text": "rate/sec = Rate^2 x 0.15 x size (about one every 7 s at full)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          620,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
          90,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*0.15*(0.3+0.7*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          400,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          30,
          160,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "> 0.02",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          190,
          54,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          130,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "delay 200",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          160,
          75,
          22
         ],
         "outlettype": [
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          190,
          47,
          22
         ],
         "outlettype": [
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          220,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "expr -log(($f1+1.)/10001.)*1000./($f2+0.0001)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          250,
          327,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "clip 1. 500.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          280,
          96,
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
         "maxclass": "comment",
         "text": "<- next wait (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          280,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          250,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          460,
          285,
          180,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "pack f f f f f f",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          220,
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
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "expr 70.+($f1/10000.)*60.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "comment",
         "text": "freq Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "expr 3.+($f1/10000.)*3.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          390,
          140,
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
         "maxclass": "comment",
         "text": "Q",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "expr 0.5+($f1/10000.)*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          760,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "comment",
         "text": "amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          910,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "expr 30.+($f1/10000.)*40.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          910,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "comment",
         "text": "dur ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "expr 0.3+($f1/10000.)*0.4",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          390,
          140,
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
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1060,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          320,
          96,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "expr 0.05+($f1/10000.)*0.1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          390,
          140,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "comment",
         "text": "click",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1210,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-38",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          168,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-39",
         "maxclass": "message",
         "text": "1. 1500",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          300,
          290,
          63,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "s fire_burst",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          320,
          96,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "comment",
         "text": "big flurry of crackles",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          320,
          150,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "r fire_settlelevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          600,
          138,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*3.0",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          630,
          124,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          660,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          690,
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          700,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          700,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          740,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-48"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          740,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-49"
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
          "obj-6",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-6",
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
          0
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
          1
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
          "obj-8",
          0
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
          "obj-11",
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
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-12",
          1
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
          "obj-21",
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
          "obj-18",
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
          "obj-24",
          0
         ],
         "destination": [
          "obj-19",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          2
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
          "obj-19",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          3
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
          "obj-30",
          0
         ],
         "destination": [
          "obj-19",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          4
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
          "obj-19",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          5
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
          "obj-36",
          0
         ],
         "destination": [
          "obj-19",
          5
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
          "obj-4",
          0
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
          "obj-39",
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
          "obj-40",
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
          "obj-43",
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
          "obj-44",
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
          "obj-4",
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
          "obj-4",
          1
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
          "obj-45",
          0
         ],
         "destination": [
          "obj-46",
          1
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-46",
          0
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
          "obj-47",
          0
         ],
         "destination": [
          "obj-49",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-74"
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "comment",
     "text": "Logs settling",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      845,
      454,
      155,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p master",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      20,
      540,
      110,
      22
     ],
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
       60,
       60,
       560,
       480
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
         "text": "MASTER: mid/side stereo width, volume, then tanh~ soft clip",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          400,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          30,
          40,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-2"
        }
       },
       {
        "box": {
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          200,
          40,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-3"
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          90,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          90,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          120,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          120,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "r fire_width",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          60,
          96,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr $f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          90,
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
         "id": "obj-10",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          330,
          120,
          49,
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
          330,
          150,
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
          200,
          180,
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
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          220,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          220,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "r fire_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          200,
          103,
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
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          230,
          124,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          330,
          260,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          330,
          290,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          340,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          375,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          420,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-21"
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
          200,
          340,
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
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          375,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          420,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-24"
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
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-2",
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
          "obj-3",
          0
         ],
         "destination": [
          "obj-4",
          1
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
          "obj-5",
          1
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
          "obj-7",
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
          "obj-6",
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
          "obj-12",
          0
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
          "obj-6",
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
          "obj-12",
          0
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
          "obj-13",
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
          "obj-18",
          0
         ],
         "destination": [
          "obj-19",
          1
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
          "obj-14",
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
          "obj-18",
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
          "obj-23",
          0
         ],
         "destination": [
          "obj-24",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-76"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "comment",
     "text": "Width (mid/side) -> Volume -> soft clip",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      540,
      260,
      20
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "comment",
     "text": "every layer sums into master (signals into one inlet are added)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      492,
      420,
      20
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      20,
      580,
      80,
      13
     ],
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      20,
      598,
      80,
      13
     ],
     "id": "obj-80"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      120,
      580,
      45,
      45
     ],
     "id": "obj-81"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "comment",
     "text": "<- click to start audio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      170,
      592,
      200,
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
      "obj-7",
      0
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
      "obj-37",
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
      "obj-41",
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
      "obj-43",
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
      "obj-45",
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
      "obj-49",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
     ],
     "destination": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      1
     ],
     "destination": [
      "obj-76",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      1
     ],
     "destination": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      1
     ],
     "destination": [
      "obj-81",
      1
     ]
    }
   }
  ]
 }
}