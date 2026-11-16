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
   1250,
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
     "text": "Procedural Wind",
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
     "text": "Every control is 0-1. Strength, Gusts and Squalls make one live wind-speed signal that drives everything: the wind and wires get louder and higher, shutters, door, cans and clothes react to gusts. Voice files wind_knock and wind_can must stay in the same folder as this patch.",
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
      332,
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
      320,
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
     "varname": "wind_strength",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_strength",
       "parameter_shortname": "Strength",
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
     "text": "s wind_strength",
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
     "varname": "wind_gustiness",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_gustiness",
       "parameter_shortname": "Gusts",
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
     "text": "s wind_gustiness",
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
     "varname": "wind_squalls",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_squalls",
       "parameter_shortname": "Squalls",
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
     "text": "s wind_squalls",
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
     "varname": "wind_width",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_width",
       "parameter_shortname": "Width",
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
     "text": "s wind_width",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      284,
      115,
      56,
      48
     ],
     "varname": "wind_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_volume",
       "parameter_shortname": "Volume",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-13"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "text": "s wind_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      284,
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
      368,
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
     "id": "obj-15"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "comment",
     "text": "WIND",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      374,
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
      374,
      115,
      56,
      48
     ],
     "varname": "wind_windlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_windlevel",
       "parameter_shortname": "Level",
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
     "text": "s wind_windlevel",
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
     "varname": "wind_bright",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_bright",
       "parameter_shortname": "Bright",
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
     "text": "s wind_bright",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      506,
      115,
      56,
      48
     ],
     "varname": "wind_howl",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_howl",
       "parameter_shortname": "Howl",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-21"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "newobj",
     "text": "s wind_howl",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      506,
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
      590,
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
     "id": "obj-23"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "comment",
     "text": "WIRES",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      596,
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
      596,
      115,
      56,
      48
     ],
     "varname": "wind_wirelevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_wirelevel",
       "parameter_shortname": "Level",
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
     "text": "s wind_wirelevel",
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
     "varname": "wind_wirepitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_wirepitch",
       "parameter_shortname": "Pitch",
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
     "text": "s wind_wirepitch",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      728,
      115,
      56,
      48
     ],
     "varname": "wind_tension",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_tension",
       "parameter_shortname": "Tension",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-29"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "text": "s wind_tension",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      728,
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
      812,
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
     "id": "obj-31"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "text": "SHUTTERS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      818,
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
      818,
      115,
      56,
      48
     ],
     "varname": "wind_shutlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_shutlevel",
       "parameter_shortname": "Level",
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
     "text": "s wind_shutlevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      818,
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
      884,
      115,
      56,
      48
     ],
     "varname": "wind_shutloose",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_shutloose",
       "parameter_shortname": "Loose",
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
     "text": "s wind_shutloose",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      884,
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
      950,
      115,
      56,
      48
     ],
     "varname": "wind_shutsize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_shutsize",
       "parameter_shortname": "Size",
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
     "text": "s wind_shutsize",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      950,
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
     "text": "DOOR",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
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
      20,
      265,
      56,
      48
     ],
     "varname": "wind_doorlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_doorlevel",
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
     "text": "s wind_doorlevel",
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
     "varname": "wind_doorloose",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_doorloose",
       "parameter_shortname": "Loose",
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
     "text": "s wind_doorloose",
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
     "varname": "wind_doorsize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_doorsize",
       "parameter_shortname": "Weight",
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
     "text": "s wind_doorsize",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236,
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
     "id": "obj-47"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "comment",
     "text": "CANS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      242,
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
      242,
      265,
      56,
      48
     ],
     "varname": "wind_canlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_canlevel",
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
     "text": "s wind_canlevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      242,
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
      308,
      265,
      56,
      48
     ],
     "varname": "wind_cancount",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_cancount",
       "parameter_shortname": "Count",
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
     "text": "s wind_cancount",
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
     "varname": "wind_cansize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_cansize",
       "parameter_shortname": "Size",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-53"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "text": "s wind_cansize",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      458,
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
     "id": "obj-55"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "comment",
     "text": "CLOTHES LINE",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464,
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
      464,
      265,
      56,
      48
     ],
     "varname": "wind_clothlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_clothlevel",
       "parameter_shortname": "Level",
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
     "text": "s wind_clothlevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464,
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
      530,
      265,
      56,
      48
     ],
     "varname": "wind_flap",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_flap",
       "parameter_shortname": "Flap",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-59"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "text": "s wind_flap",
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
     "varname": "wind_snap",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wind_snap",
       "parameter_shortname": "Snap",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-61"
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "text": "s wind_snap",
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
     "id": "obj-63",
     "maxclass": "newobj",
     "text": "r wind_speedc",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      790,
      270,
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
      790,
      300,
      220,
      22
     ],
     "id": "obj-64"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "comment",
     "text": "live wind speed (gusts and squalls show here)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      790,
      325,
      260,
      20
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p windspeed",
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
       780,
       580
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
         "text": "WIND SPEED: one 0-1 control signal everything else listens to. Strength x (1 + slow drift + gusts + squalls), clipped to 0-1. Sent as audio (send~ wind_speed) and as a float every 30 ms (s wind_speedc).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          720,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r wind_strength",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "expr $f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-4",
         "maxclass": "message",
         "text": "$1 300",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          110,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          30,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "r wind_gustiness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
         "text": "expr $f1*0.8",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          80,
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
         "text": "$1 200",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "r wind_squalls",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          370,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "expr $f1*1.2",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          370,
          80,
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
         "id": "obj-12",
         "maxclass": "message",
         "text": "$1 200",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          370,
          110,
          56,
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
          370,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "rand~ 0.05",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          200,
          82,
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
         "text": "*~ 0.2",
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
         "id": "obj-16",
         "maxclass": "comment",
         "text": "slow drift",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          255,
          80,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "rand~ 0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "rand~ 0.83",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          280,
          200,
          82,
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
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          280,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
         "id": "obj-21",
         "maxclass": "comment",
         "text": "gusts",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          285,
          60,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "rand~ 2.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          370,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "-~ 0.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          370,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          370,
          260,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "rand~ 0.07",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          500,
          200,
          82,
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
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "*~ 3.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
          260,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          370,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          370,
          320,
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
         "id": "obj-30",
         "maxclass": "comment",
         "text": "squalls: jagged bursts that only happen now and then",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          320,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          360,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          395,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "*~ 0.75",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          425,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "clip~ 0. 1.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          455,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "send~ wind_speed",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          495,
          124,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "snapshot~ 30",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          360,
          495,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "s wind_speedc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          360,
          525,
          103,
          22
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
          "obj-17",
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
          "obj-20",
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
          "obj-24",
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
          "obj-27",
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
          "obj-13",
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
          "obj-15",
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
          "obj-20",
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
     "text": "<- makes the shared wind-speed signal (no audio out)",
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
     "text": "p wind",
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
       600
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
         "text": "WIND: the airflow itself. Noise through a broad bandpass whose centre rises with speed (Bright scales it), loudness ~ speed^2. Howl: two narrow resonances that sing at higher speeds.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          720,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "receive~ wind_speed",
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
         "text": "r wind_bright",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
          50,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "expr 0.4+$f1*1.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
          80,
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
         "id": "obj-5",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          250,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          250,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "r wind_windlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*2.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-9",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          420,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          420,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "r wind_howl",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          590,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*12.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          590,
          80,
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
         "id": "obj-13",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          590,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          590,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "*~ 1400.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          180,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "+~ 120.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          210,
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
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          240,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          290,
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
         "text": "reson~ 1. 400. 0.8",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          320,
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
         "id": "obj-22",
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
          520,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-23"
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          290,
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
         "maxclass": "newobj",
         "text": "reson~ 1. 400. 0.8",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          200,
          320,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
          200,
          520,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-27"
        }
       },
       {
        "box": {
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "-~ 0.3",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          180,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          210,
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
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          240,
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
         "text": "*~ 350.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          290,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "+~ 250.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          320,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          500,
          320,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "reson~ 1. 400. 40.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          420,
          360,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          400,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "*~ 500.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          290,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "+~ 430.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          320,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          660,
          320,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "reson~ 1. 400. 40.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          580,
          360,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          400,
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
         "maxclass": "comment",
         "text": "howl only starts above speed 0.3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420,
          430,
          220,
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
          "obj-3",
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
          "obj-2",
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
          "obj-6",
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
          "obj-2",
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
          "obj-2",
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
          "obj-19",
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
          "obj-19",
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
          "obj-17",
          0
         ],
         "destination": [
          "obj-21",
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
          "obj-22",
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
          "obj-17",
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
          "obj-19",
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
          "obj-2",
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
          "obj-14",
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
          "obj-2",
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
          "obj-34",
          2
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
          "obj-35",
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
          "obj-35",
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
          "obj-23",
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
          "obj-39",
          2
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
          "obj-30",
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
          "obj-27",
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
     "text": "Airflow + howl",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      454,
      165,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p wires",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      195,
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
       860,
       800
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
         "text": "WIRES: Aeolian tones from wind over overhead wires. Three wires of different thickness; pitch follows speed, Tension narrows the resonance into a whistle. Each wire fades in and out.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          720,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "receive~ wind_speed",
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
         "text": "r wind_wirepitch",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "expr 300.*exp($f1*1.7)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "id": "obj-5",
         "maxclass": "message",
         "text": "$1 200",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          250,
          110,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          250,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "r wind_wirelevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*10.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          80,
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
         "id": "obj-9",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          420,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          420,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "r wind_tension",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          590,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "expr 15.+$f1*$f1*250.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          590,
          80,
          159,
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
         "text": "-~ 0.12",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          180,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          210,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          180,
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
          200,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          290,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          690,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          690,
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
         "text": "*~ 1.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          290,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "rand~ 5.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          270,
          320,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "*~ 0.015",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          350,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          380,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          410,
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
         "text": "reson~ 1. 600. 60.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          200,
          440,
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
         "text": "rand~ 0.13",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          270,
          470,
          82,
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
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          500,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          530,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          560,
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
         "text": "*~ 1.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          640,
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
         "text": "*~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          640,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "*~ 1.37",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          390,
          290,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "rand~ 5.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          320,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "*~ 0.015",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          350,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          380,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          390,
          410,
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
         "text": "reson~ 1. 600. 60.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          390,
          440,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "rand~ 0.20",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          470,
          82,
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
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          500,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          530,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          390,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          390,
          560,
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
         "text": "*~ 0.7",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          390,
          640,
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "*~ 0.7",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          450,
          640,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "*~ 1.83",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          290,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "rand~ 5.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          650,
          320,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "*~ 0.015",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          350,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          380,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          410,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "reson~ 1. 600. 60.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          580,
          440,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "rand~ 0.27",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          650,
          470,
          82,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-54",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          500,
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
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          530,
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
         "id": "obj-56",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
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
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          560,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "*~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          640,
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
         "id": "obj-59",
         "maxclass": "newobj",
         "text": "*~ 1.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          640,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          730,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-60"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          730,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-61"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-3",
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
          "obj-2",
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
          "obj-10",
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
          "obj-2",
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
          "obj-6",
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
          "obj-18",
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
          "obj-26",
          2
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
          "obj-26",
          3
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
          "obj-26",
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
          "obj-15",
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
          "obj-31",
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
          "obj-31",
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
          "obj-32",
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
          "obj-33",
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
          "obj-17",
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
          "obj-34",
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
          "obj-18",
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
          "obj-38",
          0
         ],
         "destination": [
          "obj-39",
          2
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
          "obj-39",
          3
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
          "obj-39",
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
          "obj-15",
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
          "obj-42",
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
          "obj-19",
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
          "obj-20",
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
          "obj-47",
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
          "obj-50",
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
          "obj-51",
          0
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
          "obj-51",
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
          "obj-52",
          2
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
          "obj-52",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-53",
          0
         ],
         "destination": [
          "obj-54",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-54",
          0
         ],
         "destination": [
          "obj-55",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-52",
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
          "obj-15",
          0
         ],
         "destination": [
          "obj-56",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          0
         ],
         "destination": [
          "obj-57",
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
          "obj-57",
          1
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
          "obj-57",
          0
         ],
         "destination": [
          "obj-59",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-58",
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
          "obj-59",
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
          "obj-60",
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
          "obj-61",
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
     "text": "Singing overhead wires",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      195,
      454,
      165,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p shutters",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      370,
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
       1700,
       780
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
         "text": "SHUTTERS: loose wooden shutters banging and bouncing back. Bangs come mostly in gusts (rate ~ Loose x speed^3) and hit harder when the wind is stronger. Size = lower, heavier wood.",
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
         "text": "poly~ wind_knock 16",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          500,
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
         "id": "obj-3",
         "maxclass": "comment",
         "text": "Random events, rate = Loose x 14 x speed^3 per second (speed from the live wind)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          560,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r wind_shutloose",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "text": "expr $f1*14.*$f2*$f2*$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          260,
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
          360,
          70,
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
          360,
          100,
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
          360,
          130,
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
          360,
          160,
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
          220,
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
          250,
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
         "text": "<- next wait (ms); capped at 500 so a rising gust is picked up quickly",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          250,
          300,
          33
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
          220,
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
         "text": "t b b b b b b b b",
         "numinlets": 1,
         "numoutlets": 8,
         "patching_rect": [
          460,
          255,
          240,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
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
         "text": "pack f f f f f f f f",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          460,
          410,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          290,
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
         "text": "expr 450.*exp(-$f2*1.2)*(0.85+($f1/10000.)*0.3)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          360,
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
         "text": "r wind_shutsize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          510,
          325,
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
         "text": "f0 Hz (Size)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          382,
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
          290,
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
         "text": "expr 5.+($f1/10000.)*8.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          360,
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
         "maxclass": "comment",
         "text": "Q",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          290,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "expr (0.25+0.75*($f1/10000.))*(0.3+0.7*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          360,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          810,
          325,
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
         "id": "obj-30",
         "maxclass": "comment",
         "text": "amp (wind speed)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          382,
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
          290,
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
         "text": "expr 6.+($f1/10000.)*10.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          910,
          360,
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
          382,
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
          290,
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
          360,
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
          382,
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
          290,
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
         "text": "expr 0.15+($f1/10000.)*0.2",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          360,
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
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
          290,
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "expr 40.+($f1/10000.)*160.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1360,
          360,
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
         "id": "obj-42",
         "maxclass": "comment",
         "text": "rebound ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1360,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          290,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          360,
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
         "id": "obj-45",
         "maxclass": "comment",
         "text": "rebound amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1510,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7 $8",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          445,
          210,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "r wind_shutlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          560,
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
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          590,
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
         "id": "obj-49",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          620,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          650,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          660,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          660,
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
          700,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-53"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          700,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-54"
        }
       }
      ],
      "lines": [
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
          "obj-29",
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
          "obj-18",
          6
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
          "obj-41",
          0
         ],
         "destination": [
          "obj-19",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          7
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
          "obj-19",
          7
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
          "obj-2",
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
          "obj-2",
          0
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
          "obj-2",
          1
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
          "obj-50",
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
          1
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
       },
       {
        "patchline": {
         "source": [
          "obj-52",
          0
         ],
         "destination": [
          "obj-54",
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
     "text": "Banging shutters (poly~ wind_knock)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      370,
      454,
      165,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p door",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      545,
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
       1700,
       780
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
         "text": "DOOR: a heavy door slamming, then its latch rattling. Only really goes in strong gusts (rate ~ Loose x speed^4). Weight = lower, longer thud.",
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
         "text": "poly~ wind_knock 6",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          500,
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
         "id": "obj-3",
         "maxclass": "comment",
         "text": "Random events, rate = Loose x 1.2 x speed^4 per second",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          560,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r wind_doorloose",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "text": "expr $f1*1.2*$f2*$f2*$f2*$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          260,
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
          360,
          70,
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
          360,
          100,
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
          360,
          130,
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
          360,
          160,
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
          220,
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
          250,
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
         "text": "<- next wait (ms); capped at 500 so a rising gust is picked up quickly",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          250,
          300,
          33
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
          220,
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
         "text": "t b b b b b b b b",
         "numinlets": 1,
         "numoutlets": 8,
         "patching_rect": [
          460,
          255,
          240,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
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
         "text": "pack f f f f f f f f",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          460,
          410,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          290,
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
         "text": "expr 140.*exp(-$f2*1.)*(0.9+($f1/10000.)*0.2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          360,
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
         "text": "r wind_doorsize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          510,
          325,
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
         "text": "f0 Hz (Weight)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          382,
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
          290,
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
         "text": "expr 6.+($f1/10000.)*4.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          360,
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
         "maxclass": "comment",
         "text": "Q",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          290,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "expr (0.4+0.6*($f1/10000.))*(0.4+0.6*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          360,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          810,
          325,
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
         "id": "obj-30",
         "maxclass": "comment",
         "text": "amp (wind speed)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          382,
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
          290,
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
         "text": "expr (18.+$f2*30.)*(0.8+($f1/10000.)*0.4)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          910,
          360,
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
         "maxclass": "newobj",
         "text": "r wind_doorsize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          960,
          325,
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
         "id": "obj-34",
         "maxclass": "comment",
         "text": "dur ms (Weight)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910,
          382,
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
          1060,
          290,
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
         "text": "expr 0.3+($f1/10000.)*0.4",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          360,
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
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1060,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          290,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "expr 0.05+($f1/10000.)*0.1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          360,
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
         "id": "obj-40",
         "maxclass": "comment",
         "text": "click",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1210,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
          290,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "expr 50.+($f1/10000.)*90.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1360,
          360,
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
         "id": "obj-43",
         "maxclass": "comment",
         "text": "latch ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1360,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          290,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "expr 0.3+($f1/10000.)*0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          360,
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
         "id": "obj-46",
         "maxclass": "comment",
         "text": "latch amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1510,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7 $8",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          445,
          210,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "r wind_doorlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          560,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          590,
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
         "id": "obj-50",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          620,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          650,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          660,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          660,
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
          700,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-54"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          700,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-55"
        }
       }
      ],
      "lines": [
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
          "obj-29",
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
          "obj-33",
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
          "obj-19",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          6
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
          "obj-42",
          0
         ],
         "destination": [
          "obj-19",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-18",
          7
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
          "obj-45",
          0
         ],
         "destination": [
          "obj-19",
          7
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
          "obj-2",
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
          "obj-50",
          0
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
          "obj-51",
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
          "obj-52",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-2",
          1
         ],
         "destination": [
          "obj-53",
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
          1
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-52",
          0
         ],
         "destination": [
          "obj-54",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-53",
          0
         ],
         "destination": [
          "obj-55",
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
     "text": "Slamming door + latch (poly~ wind_knock)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      545,
      454,
      165,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p cans",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      720,
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
       1450,
       780
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
         "text": "CANS: empty cans blown down the street. Each one rolls for a few seconds, faster in stronger wind, and travels across the stereo field.",
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
         "text": "poly~ wind_can 6",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          460,
          500,
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
         "id": "obj-3",
         "maxclass": "comment",
         "text": "Random events, rate = Count^2 x 0.35 x speed^2 per second",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          45,
          560,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r wind_cancount",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "text": "expr $f1*$f1*0.35*$f2*$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          130,
          260,
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
          360,
          70,
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
          360,
          100,
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
          360,
          130,
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
          360,
          160,
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
          220,
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
          250,
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
         "text": "<- next wait (ms); capped at 500 so a rising gust is picked up quickly",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          250,
          300,
          33
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
          220,
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
          255,
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
          410,
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
          290,
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
         "text": "expr (1.5+($f1/10000.)*3.)*(0.5+$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          360,
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
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          510,
          325,
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
         "text": "revs/sec (wind speed)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          460,
          382,
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
          290,
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
         "text": "expr 1500.+($f1/10000.)*4000.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          360,
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
         "maxclass": "comment",
         "text": "hold ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          610,
          382,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          290,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "expr 0.3+($f1/10000.)*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          760,
          360,
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
         "id": "obj-29",
         "maxclass": "comment",
         "text": "amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          760,
          382,
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
          910,
          290,
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
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          910,
          360,
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
         "text": "pan start",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          910,
          382,
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
          1060,
          290,
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
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1060,
          360,
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
         "text": "pan end",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1060,
          382,
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
          1210,
          290,
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
         "text": "expr 1.4*exp(-$f2*0.8)*(0.85+($f1/10000.)*0.3)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1210,
          360,
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
         "maxclass": "newobj",
         "text": "r wind_cansize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1260,
          325,
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
         "id": "obj-39",
         "maxclass": "comment",
         "text": "size scale (Size)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1210,
          382,
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
          445,
          168,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "r wind_canlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          560,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          590,
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
         "id": "obj-43",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          640,
          620,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          640,
          650,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          660,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          550,
          660,
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
          700,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-47"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          550,
          700,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-48"
        }
       }
      ],
      "lines": [
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
          "obj-28",
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
          "obj-38",
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
          "obj-2",
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
          "obj-2",
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
          "obj-2",
          1
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
          "obj-44",
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
          "obj-48",
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
     "text": "Rolling cans (poly~ wind_can)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      720,
      454,
      165,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p clothes",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      895,
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
       1900,
       1300
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
         "text": "CLOTHES ON THE LINE: two garments flapping (noise gated by a pulse train whose rate follows speed; Flap scales the rate), plus sharp whip-crack snaps in gusts (Snap).",
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
         "text": "receive~ wind_speed",
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
         "text": "r wind_flap",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "expr 2.+$f1*14.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "id": "obj-5",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          250,
          110,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          250,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          50,
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
         "id": "obj-8",
         "maxclass": "comment",
         "text": "speed^2 = flap loudness",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          470,
          50,
          160,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "+~ 1.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          220,
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
         "text": "*~ 1.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          250,
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
         "text": "rand~ 2.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          120,
          250,
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
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "*~ 1.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          310,
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
         "text": "phasor~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          340,
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
         "text": "*~ -1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          370,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          400,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          430,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          460,
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
         "text": "*~ 0.8",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          490,
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
         "text": "+~ 0.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          520,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          160,
          520,
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
         "text": "reson~ 1. 1500. 1.2",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          160,
          550,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          590,
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
          620,
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
         "text": "*~ 0.9",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          660,
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
         "text": "*~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          110,
          660,
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
         "text": "+~ 1.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          220,
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
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "*~ 1.27",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          250,
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
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "rand~ 3.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          250,
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
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "*~ 1.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          310,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "phasor~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          340,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "*~ -1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          370,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          400,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          430,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          460,
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
         "text": "*~ 0.8",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          490,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "+~ 0.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          520,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          520,
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "reson~ 1. 1500. 1.2",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          420,
          550,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          590,
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
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          620,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "*~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          660,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "*~ 0.9",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          370,
          660,
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
         "id": "obj-46",
         "maxclass": "comment",
         "text": "(1 - phase)^4 = one flap per cycle",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          120,
          430,
          200,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "poly~ wind_knock 8",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          620,
          1110,
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
         "id": "obj-48",
         "maxclass": "comment",
         "text": "Snaps: rate = Snap^2 x 8 x speed^3 per second",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          185,
          560,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "r wind_snap",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          620,
          210,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          780,
          210,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          240,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*8.*$f2*$f2*$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          270,
          260,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          620,
          300,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "text": "> 0.02",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          780,
          330,
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
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          950,
          210,
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
         "id": "obj-56",
         "maxclass": "newobj",
         "text": "delay 200",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          950,
          240,
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
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          950,
          270,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          950,
          300,
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
         "id": "obj-59",
         "maxclass": "newobj",
         "text": "expr -log(($f1+1.)/10001.)*1000./($f2+0.0001)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          360,
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
         "id": "obj-60",
         "maxclass": "newobj",
         "text": "clip 1. 500.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          620,
          390,
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
         "id": "obj-61",
         "maxclass": "comment",
         "text": "<- next wait (ms); capped at 500 so a rising gust is picked up quickly",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          720,
          390,
          300,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-62",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1050,
          360,
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
         "id": "obj-63",
         "maxclass": "newobj",
         "text": "t b b b b b b b b",
         "numinlets": 1,
         "numoutlets": 8,
         "patching_rect": [
          1050,
          395,
          240,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
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
         "id": "obj-64",
         "maxclass": "newobj",
         "text": "pack f f f f f f f f",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          1050,
          550,
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
         "id": "obj-65",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1050,
          430,
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
         "id": "obj-66",
         "maxclass": "newobj",
         "text": "expr 1500.+($f1/10000.)*1500.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1050,
          500,
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
         "id": "obj-67",
         "maxclass": "comment",
         "text": "f0 Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1050,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-68",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1200,
          430,
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
         "id": "obj-69",
         "maxclass": "newobj",
         "text": "expr 1.+($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1200,
          500,
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
         "id": "obj-70",
         "maxclass": "comment",
         "text": "Q",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1200,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-71",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1350,
          430,
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
         "id": "obj-72",
         "maxclass": "newobj",
         "text": "expr (0.3+0.7*($f1/10000.))*$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1350,
          500,
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
         "id": "obj-73",
         "maxclass": "newobj",
         "text": "r wind_speedc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1400,
          465,
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
         "id": "obj-74",
         "maxclass": "comment",
         "text": "amp (wind speed)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1350,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-75",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1500,
          430,
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
         "id": "obj-76",
         "maxclass": "newobj",
         "text": "expr 2.+($f1/10000.)*4.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1500,
          500,
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
         "id": "obj-77",
         "maxclass": "comment",
         "text": "dur ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1500,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-78",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1650,
          430,
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
         "id": "obj-79",
         "maxclass": "newobj",
         "text": "expr 0.2+($f1/10000.)*0.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1650,
          500,
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
         "id": "obj-80",
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1650,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-81",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1800,
          430,
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
         "id": "obj-82",
         "maxclass": "newobj",
         "text": "expr 0.8+($f1/10000.)*0.2",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1800,
          500,
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
         "id": "obj-83",
         "maxclass": "comment",
         "text": "click",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1800,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-84",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1950,
          430,
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
         "id": "obj-85",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)*0.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1950,
          500,
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
         "id": "obj-86",
         "maxclass": "comment",
         "text": "rebound (none)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1950,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          2100,
          430,
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
         "id": "obj-88",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)*0.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          2100,
          500,
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
         "id": "obj-89",
         "maxclass": "comment",
         "text": "rebound amp",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          2100,
          522,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-90",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7 $8",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          1050,
          585,
          210,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-91",
         "maxclass": "newobj",
         "text": "r wind_clothlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          210,
          1100,
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
         "id": "obj-92",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          210,
          1130,
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
         "id": "obj-93",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          210,
          1160,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-94",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          210,
          1190,
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
         "id": "obj-95",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1200,
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
         "id": "obj-96",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
          1200,
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
          1240,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-97"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          120,
          1240,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-98"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-3",
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
          "obj-2",
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
          "obj-2",
          0
         ],
         "destination": [
          "obj-7",
          1
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
          "obj-9",
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
          "obj-17",
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
          "obj-21",
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
          "obj-7",
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
          "obj-25",
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
          "obj-29",
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
          "obj-35",
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
          "obj-39",
          0
         ],
         "destination": [
          "obj-42",
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
          "obj-7",
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
          "obj-43",
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
          "obj-49",
          0
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
          "obj-50",
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
          "obj-52",
          0
         ],
         "destination": [
          "obj-53",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-53",
          1
         ],
         "destination": [
          "obj-54",
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
          "obj-56",
          0
         ],
         "destination": [
          "obj-57",
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
          "obj-58",
          0
         ],
         "destination": [
          "obj-59",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-53",
          0
         ],
         "destination": [
          "obj-59",
          1
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
          "obj-60",
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
          "obj-54",
          0
         ],
         "destination": [
          "obj-62",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-57",
          1
         ],
         "destination": [
          "obj-62",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-62",
          0
         ],
         "destination": [
          "obj-63",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          0
         ],
         "destination": [
          "obj-65",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-65",
          0
         ],
         "destination": [
          "obj-66",
          0
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
          "obj-64",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          1
         ],
         "destination": [
          "obj-68",
          0
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
          "obj-69",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-69",
          0
         ],
         "destination": [
          "obj-64",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          2
         ],
         "destination": [
          "obj-71",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-71",
          0
         ],
         "destination": [
          "obj-72",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-73",
          0
         ],
         "destination": [
          "obj-72",
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
          "obj-64",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          3
         ],
         "destination": [
          "obj-75",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-75",
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
          "obj-76",
          0
         ],
         "destination": [
          "obj-64",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          4
         ],
         "destination": [
          "obj-78",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-78",
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
          "obj-79",
          0
         ],
         "destination": [
          "obj-64",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          5
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
          "obj-81",
          0
         ],
         "destination": [
          "obj-82",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-82",
          0
         ],
         "destination": [
          "obj-64",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          6
         ],
         "destination": [
          "obj-84",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-84",
          0
         ],
         "destination": [
          "obj-85",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-85",
          0
         ],
         "destination": [
          "obj-64",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-63",
          7
         ],
         "destination": [
          "obj-87",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-87",
          0
         ],
         "destination": [
          "obj-88",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-88",
          0
         ],
         "destination": [
          "obj-64",
          7
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
          "obj-90",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-90",
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
          "obj-91",
          0
         ],
         "destination": [
          "obj-92",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-92",
          0
         ],
         "destination": [
          "obj-93",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-93",
          0
         ],
         "destination": [
          "obj-94",
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
          "obj-95",
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
          "obj-95",
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
          "obj-95",
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
          "obj-96",
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
          "obj-96",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-47",
          1
         ],
         "destination": [
          "obj-96",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-94",
          0
         ],
         "destination": [
          "obj-95",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-94",
          0
         ],
         "destination": [
          "obj-96",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-95",
          0
         ],
         "destination": [
          "obj-97",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-96",
          0
         ],
         "destination": [
          "obj-98",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-78"
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "comment",
     "text": "Flapping washing + snaps",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      895,
      454,
      165,
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
         "text": "r wind_width",
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
         "text": "r wind_volume",
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
     "id": "obj-80"
    }
   },
   {
    "box": {
     "id": "obj-81",
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
     "id": "obj-82",
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
     "id": "obj-83"
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
     "id": "obj-84"
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
     "id": "obj-85"
    }
   },
   {
    "box": {
     "id": "obj-86",
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
      "obj-53",
      0
     ],
     "destination": [
      "obj-54",
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
      "obj-61",
      0
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
      0
     ],
     "destination": [
      "obj-64",
      0
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      "obj-80",
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
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-78",
      0
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
      "obj-78",
      1
     ],
     "destination": [
      "obj-80",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      1
     ],
     "destination": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      1
     ],
     "destination": [
      "obj-85",
      1
     ]
    }
   }
  ]
 }
}