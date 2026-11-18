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
     "text": "Procedural Clatter",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      10,
      340,
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
     "text": "Every control is 0-1. Things blown about and banging at random: tumbling cans, a door slamming (with hinge squeak and latch), and sticks clattering. Activity = how busy overall, Gusts = how much it comes in bursts, Tone = darker/lower <-> brighter/higher. Voice files clatter_can / clatter_door / clatter_wood must stay in this folder.",
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
      464,
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
      452,
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
     "varname": "clatter_activity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_activity",
       "parameter_shortname": "Activity",
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
     "text": "s clatter_activity",
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
     "varname": "clatter_gusts",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_gusts",
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
     "text": "s clatter_gusts",
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
     "varname": "clatter_space",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_space",
       "parameter_shortname": "Space",
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
     "text": "s clatter_space",
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
     "varname": "clatter_distance",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_distance",
       "parameter_shortname": "Distance",
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
     "text": "s clatter_distance",
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
     "varname": "clatter_tone",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_tone",
       "parameter_shortname": "Tone",
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
     "text": "s clatter_tone",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      350,
      115,
      56,
      48
     ],
     "varname": "clatter_width",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_width",
       "parameter_shortname": "Width",
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
     "text": "s clatter_width",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      350,
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
      416,
      115,
      56,
      48
     ],
     "varname": "clatter_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_volume",
       "parameter_shortname": "Volume",
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
     "text": "s clatter_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      416,
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
     "id": "obj-19"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "text": "CANS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      240,
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
      265,
      56,
      48
     ],
     "varname": "clatter_canlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_canlevel",
       "parameter_shortname": "Level",
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
     "text": "s clatter_canlevel",
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
     "varname": "clatter_canrate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_canrate",
       "parameter_shortname": "Rate",
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
     "text": "s clatter_canrate",
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
     "varname": "clatter_cansize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_cansize",
       "parameter_shortname": "Size",
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
     "text": "s clatter_cansize",
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
     "varname": "clatter_bounce",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_bounce",
       "parameter_shortname": "Bounce",
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
     "text": "s clatter_bounce",
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
      265,
      56,
      48
     ],
     "varname": "clatter_ring",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_ring",
       "parameter_shortname": "Ring",
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
     "text": "s clatter_ring",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      284,
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
      368,
      237,
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
     "id": "obj-31"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "text": "DOOR",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      374,
      240,
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
      374,
      265,
      56,
      48
     ],
     "varname": "clatter_doorlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_doorlevel",
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
     "text": "s clatter_doorlevel",
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
     "varname": "clatter_doorrate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_doorrate",
       "parameter_shortname": "Rate",
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
     "text": "s clatter_doorrate",
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
      265,
      56,
      48
     ],
     "varname": "clatter_weight",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_weight",
       "parameter_shortname": "Weight",
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
     "text": "s clatter_weight",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      506,
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
      572,
      265,
      56,
      48
     ],
     "varname": "clatter_creak",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.15
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_creak",
       "parameter_shortname": "Creak",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-39"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "text": "s clatter_creak",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      572,
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
      638,
      265,
      56,
      48
     ],
     "varname": "clatter_latch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_latch",
       "parameter_shortname": "Latch",
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
     "text": "s clatter_latch",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      638,
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
      722,
      237,
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
     "id": "obj-43"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "comment",
     "text": "STICKS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      728,
      240,
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
      728,
      265,
      56,
      48
     ],
     "varname": "clatter_sticklevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_sticklevel",
       "parameter_shortname": "Level",
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
     "text": "s clatter_sticklevel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      728,
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
      794,
      265,
      56,
      48
     ],
     "varname": "clatter_stickrate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_stickrate",
       "parameter_shortname": "Rate",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-47"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "text": "s clatter_stickrate",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794,
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
      860,
      265,
      56,
      48
     ],
     "varname": "clatter_sticksize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_sticksize",
       "parameter_shortname": "Size",
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
     "text": "s clatter_sticksize",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      860,
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
      926,
      265,
      56,
      48
     ],
     "varname": "clatter_clatter",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_clatter",
       "parameter_shortname": "Clatter",
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
     "text": "s clatter_clatter",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      926,
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
      992,
      265,
      56,
      48
     ],
     "varname": "clatter_hardness",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "clatter_hardness",
       "parameter_shortname": "Hardness",
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
     "text": "s clatter_hardness",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      992,
      327,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "newobj",
     "text": "r clatter_gustc",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      480,
      100,
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
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "orientation": 1,
     "floatoutput": 1,
     "size": 4.0,
     "ignoreclick": 1,
     "patching_rect": [
      480,
      130,
      200,
      22
     ],
     "id": "obj-56"
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "comment",
     "text": "live gusts",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480,
      155,
      120,
      20
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p gusts",
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
       640,
       300
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
         "text": "GUSTS: a random value that is mostly low with occasional peaks. Gusts mixes it into every layer's rate, so events come in bursts, like things blown about in squalls.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          600,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "rand~ 0.25",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          60,
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          90,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          120,
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
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          150,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "snapshot~ 100",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          190,
          103,
          22
         ],
         "outlettype": [
          "float"
         ]
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "s clatter_gustc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          220,
          117,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "comment",
         "text": "max(rand,0)^2 x 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          110,
          120,
          150,
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
       }
      ]
     },
     "id": "obj-58"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "comment",
     "text": "<- makes the shared gust value (no audio out)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      390,
      320,
      20
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
       1900,
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
         "text": "CANS: empty cans blown over and tumbling. Each event is a whole tumble (see clatter_can.maxpat): bounces getting closer together and quieter until they rattle out. Bounce = longer, livelier tumbles. Ring = how long the metal rings.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          800,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "poly~ clatter_can 8",
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r clatter_canrate",
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r clatter_activity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          140,
          70,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r clatter_gusts",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "text": "r clatter_gustc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          340,
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
         "maxclass": "comment",
         "text": "rate/sec = Rate^2 x 3 x Activity x gusts",
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "pak f f f f",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*3.0*(0.1+0.9*$f2)*((1.-$f3)+$f3*$f4)",
         "numinlets": 4,
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
         "id": "obj-10",
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
         "id": "obj-11",
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
         "id": "obj-12",
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
         "id": "obj-13",
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
         "id": "obj-14",
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
         "id": "obj-15",
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
         "id": "obj-16",
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
         "id": "obj-17",
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
         "id": "obj-18",
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
         "id": "obj-19",
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "<= 500.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          250,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
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
         "id": "obj-22",
         "maxclass": "comment",
         "text": "<- only a real event if the wait was not capped",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          270,
          280,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "t b b b b b b b b b",
         "numinlets": 1,
         "numoutlets": 9,
         "patching_rect": [
          460,
          300,
          270,
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
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "pack f f f f f f f f f",
         "numinlets": 9,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          310,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "expr 700.*exp(-$f2*1.75)*exp(($f3-0.5)*1.4)*(0.7+($f1/10000.)*0.6)",
         "numinlets": 3,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "r clatter_cansize",
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "r clatter_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          460,
          333,
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
         "text": "f0 Hz (Size, Tone)",
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
         "text": "expr 0.95+($f1/10000.)*0.1",
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
         "text": "rim/body ratio",
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
         "text": "expr 40.+$f2*$f2*260.",
         "numinlets": 2,
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
         "maxclass": "newobj",
         "text": "r clatter_ring",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          810,
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
         "id": "obj-36",
         "maxclass": "comment",
         "text": "Q (Ring)",
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
         "id": "obj-37",
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "expr 0.3+($f1/10000.)*0.7",
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
         "id": "obj-39",
         "maxclass": "comment",
         "text": "amp",
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
         "id": "obj-40",
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "expr (80.+$f2*220.)*(0.6+($f1/10000.)*0.8)",
         "numinlets": 2,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "r clatter_bounce",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1110,
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
         "id": "obj-43",
         "maxclass": "comment",
         "text": "first gap ms (Bounce)",
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
         "id": "obj-44",
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "expr 0.55+$f2*0.25+($f1/10000.)*0.05",
         "numinlets": 2,
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "r clatter_bounce",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1260,
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
         "id": "obj-47",
         "maxclass": "comment",
         "text": "gap ratio (Bounce)",
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "expr 0.55+$f2*0.25+($f1/10000.)*0.05",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "r clatter_bounce",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1410,
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
         "id": "obj-51",
         "maxclass": "comment",
         "text": "amp decay (Bounce)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1360,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1510,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "expr 6000.*exp(-$f2*1.5)*exp(($f3-0.5)*2.)*(0.6+($f1/10000.)*0.8)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          1510,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "text": "r clatter_cansize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1560,
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
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "r clatter_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          333,
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
         "id": "obj-56",
         "maxclass": "comment",
         "text": "bright Hz (Size, Tone)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1510,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1660,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1660,
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
         "id": "obj-59",
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1660,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-60",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7 $8 $9",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          231,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "newobj",
         "text": "r clatter_canlevel",
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
         "id": "obj-62",
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
         "id": "obj-63",
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
         "id": "obj-64",
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
         "id": "obj-65",
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
         "id": "obj-66",
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
         "id": "obj-67"
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
         "id": "obj-68"
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
          "obj-8",
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
          "obj-8",
          1
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
          2
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
          "obj-8",
          3
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
          1
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
          "obj-10",
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
          "obj-13",
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
          "obj-19",
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
          "obj-19",
          1
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
          "obj-19",
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
          "obj-27",
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
          "obj-28",
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
          "obj-26",
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
          "obj-24",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-35",
          0
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
          "obj-34",
          0
         ],
         "destination": [
          "obj-24",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-24",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          4
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
          "obj-42",
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
          "obj-41",
          0
         ],
         "destination": [
          "obj-24",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          5
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
          "obj-46",
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
          "obj-24",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          6
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
          "obj-50",
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
          "obj-49",
          0
         ],
         "destination": [
          "obj-24",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          7
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
          "obj-54",
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
          "obj-55",
          0
         ],
         "destination": [
          "obj-53",
          2
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
          "obj-24",
          7
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          8
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
          "obj-24",
          8
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
          "obj-2",
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
          "obj-64",
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
          "obj-65",
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
          "obj-66",
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
          "obj-65",
          1
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
          "obj-66",
          1
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
          "obj-67",
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
          "obj-68",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-60"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "comment",
     "text": "Tumbling cans (poly~ clatter_can)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      454,
      210,
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
      240,
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
         "text": "DOOR: a door caught by the wind - an optional creak, a slam, the latch, two rebounds (see clatter_door.maxpat). Weight = bigger, lower, longer thump. Creak = how often and how loud the hinge squeaks first.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          800,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "poly~ clatter_door 4",
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r clatter_doorrate",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          70,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r clatter_activity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          140,
          70,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r clatter_gusts",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "text": "r clatter_gustc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          340,
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
         "maxclass": "comment",
         "text": "rate/sec = Rate^2 x 1 x Activity x gusts",
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "pak f f f f",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.0*(0.1+0.9*$f2)*((1.-$f3)+$f3*$f4)",
         "numinlets": 4,
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
         "id": "obj-10",
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
         "id": "obj-11",
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
         "id": "obj-12",
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
         "id": "obj-13",
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
         "id": "obj-14",
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
         "id": "obj-15",
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
         "id": "obj-16",
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
         "id": "obj-17",
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
         "id": "obj-18",
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
         "id": "obj-19",
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "<= 500.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          250,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
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
         "id": "obj-22",
         "maxclass": "comment",
         "text": "<- only a real event if the wait was not capped",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          270,
          280,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "t b b b b b b b",
         "numinlets": 1,
         "numoutlets": 7,
         "patching_rect": [
          460,
          300,
          210,
          22
         ],
         "outlettype": [
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "pack f f f f f f f",
         "numinlets": 7,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          250,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "expr 95.*exp(-$f2*0.64)*exp(($f3-0.5)*0.6)*(0.9+($f1/10000.)*0.2)",
         "numinlets": 3,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "r clatter_weight",
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "r clatter_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          460,
          333,
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
         "text": "f0 Hz (Weight, Tone)",
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
         "text": "expr 0.5+($f1/10000.)*0.5",
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
         "text": "amp",
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
         "text": "expr $f2*(0.4+($f1/10000.)*0.6)",
         "numinlets": 2,
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
         "maxclass": "newobj",
         "text": "r clatter_creak",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          810,
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
         "id": "obj-36",
         "maxclass": "comment",
         "text": "creak amount (Creak)",
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
         "id": "obj-37",
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "expr 150.+($f1/10000.)*350.",
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
         "id": "obj-39",
         "maxclass": "comment",
         "text": "creak half ms",
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
         "id": "obj-40",
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "expr $f2*(0.5+($f1/10000.)*0.5)",
         "numinlets": 2,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "r clatter_latch",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1110,
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
         "id": "obj-43",
         "maxclass": "comment",
         "text": "latch (Latch)",
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
         "id": "obj-44",
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "expr 0.2+($f1/10000.)*0.6",
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
         "id": "obj-46",
         "maxclass": "comment",
         "text": "pan",
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "expr 60.+($f1/10000.)*60.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-49",
         "maxclass": "comment",
         "text": "rebound ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1360,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-50",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          189,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "r clatter_doorlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          600,
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
         "id": "obj-52",
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
         "id": "obj-53",
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
         "id": "obj-54",
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
         "id": "obj-55",
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
         "id": "obj-56",
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
         "id": "obj-57"
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
         "id": "obj-58"
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
          "obj-8",
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
          "obj-8",
          1
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
          2
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
          "obj-8",
          3
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
          1
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
          "obj-10",
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
          "obj-13",
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
          "obj-19",
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
          "obj-19",
          1
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
          "obj-19",
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
          "obj-27",
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
          "obj-28",
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
          "obj-26",
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
          "obj-24",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-35",
          0
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
          "obj-34",
          0
         ],
         "destination": [
          "obj-24",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-24",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          4
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
          "obj-42",
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
          "obj-41",
          0
         ],
         "destination": [
          "obj-24",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          5
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
          "obj-24",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          6
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
          "obj-24",
          6
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
          "obj-2",
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
          "obj-2",
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
          "obj-2",
          1
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
          "obj-55",
          1
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
          "obj-56",
          1
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
          "obj-58",
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
     "text": "Door: creak, slam, latch (poly~ clatter_door)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      454,
      210,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p sticks",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      460,
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
         "text": "STICKS: twigs and sticks dropping and clattering - two pieces of wood knocking together and on the ground in an irregular burst (see clatter_wood.maxpat). Clatter = longer bursts. Hardness = brighter, more ringing wood.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          800,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "poly~ clatter_wood 12",
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r clatter_stickrate",
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r clatter_activity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          140,
          70,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r clatter_gusts",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
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
         "text": "r clatter_gustc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          340,
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
         "maxclass": "comment",
         "text": "rate/sec = Rate^2 x 8 x Activity x gusts",
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "pak f f f f",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          100,
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
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*8.0*(0.1+0.9*$f2)*((1.-$f3)+$f3*$f4)",
         "numinlets": 4,
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
         "id": "obj-10",
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
         "id": "obj-11",
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
         "id": "obj-12",
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
         "id": "obj-13",
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
         "id": "obj-14",
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
         "id": "obj-15",
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
         "id": "obj-16",
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
         "id": "obj-17",
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
         "id": "obj-18",
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
         "id": "obj-19",
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "<= 500.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          250,
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
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
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
         "id": "obj-22",
         "maxclass": "comment",
         "text": "<- only a real event if the wait was not capped",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          270,
          280,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "t b b b b b b b b b",
         "numinlets": 1,
         "numoutlets": 9,
         "patching_rect": [
          460,
          300,
          270,
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
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "pack f f f f f f f f f",
         "numinlets": 9,
         "numoutlets": 1,
         "patching_rect": [
          460,
          440,
          310,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "expr 2200.*exp(-$f2*2.6)*exp(($f3-0.5)*1.4)*(0.7+($f1/10000.)*0.6)",
         "numinlets": 3,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "r clatter_sticksize",
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "r clatter_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          460,
          333,
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
         "text": "f0 Hz (Size, Tone)",
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
         "text": "expr 1.15+($f1/10000.)*0.6",
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
         "text": "2nd stick ratio",
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
         "text": "expr 4.+$f2*16.",
         "numinlets": 2,
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
         "maxclass": "newobj",
         "text": "r clatter_hardness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          810,
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
         "id": "obj-36",
         "maxclass": "comment",
         "text": "Q (Hardness)",
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
         "id": "obj-37",
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "expr 0.2+($f1/10000.)*0.8",
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
         "id": "obj-39",
         "maxclass": "comment",
         "text": "amp",
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
         "id": "obj-40",
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
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "expr 25.+($f1/10000.)*90.",
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
         "id": "obj-42",
         "maxclass": "comment",
         "text": "first gap ms",
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
         "id": "obj-43",
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "expr 0.75+($f1/10000.)*0.35",
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
         "id": "obj-45",
         "maxclass": "comment",
         "text": "gap ratio",
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "expr 0.35+$f2*0.45",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1360,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "r clatter_clatter",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1410,
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
         "id": "obj-49",
         "maxclass": "comment",
         "text": "amp decay (Clatter)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1360,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1510,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "expr 8000.*exp(-$f2*1.8)*exp(($f3-0.5)*2.)*(0.5+($f1/10000.))",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          1510,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "r clatter_sticksize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1560,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "r clatter_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1510,
          333,
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
         "id": "obj-54",
         "maxclass": "comment",
         "text": "bright Hz (Size, Tone)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1510,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1660,
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
         "id": "obj-56",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1660,
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
         "id": "obj-57",
         "maxclass": "comment",
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1660,
          412,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-58",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6 $7 $8 $9",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          460,
          475,
          231,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "newobj",
         "text": "r clatter_sticklevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          640,
          600,
          152,
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
         "id": "obj-61",
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
         "id": "obj-62",
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
         "id": "obj-63",
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
         "id": "obj-64",
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
         "id": "obj-65"
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
         "id": "obj-66"
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
          "obj-8",
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
          "obj-8",
          1
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
          2
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
          "obj-8",
          3
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
          1
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
          "obj-10",
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
          "obj-13",
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
          "obj-19",
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
          "obj-19",
          1
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
          "obj-19",
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
          "obj-27",
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
          "obj-28",
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
          "obj-26",
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
          "obj-24",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-35",
          0
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
          "obj-34",
          0
         ],
         "destination": [
          "obj-24",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
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
          "obj-24",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          4
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
          "obj-24",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          5
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
          "obj-24",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          6
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
          "obj-48",
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
          "obj-47",
          0
         ],
         "destination": [
          "obj-24",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          7
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
          "obj-52",
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
          "obj-53",
          0
         ],
         "destination": [
          "obj-51",
          2
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
          "obj-24",
          7
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-23",
          8
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
          "obj-24",
          8
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
          "obj-2",
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
          "obj-60",
          0
         ],
         "destination": [
          "obj-61",
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
          "obj-2",
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
          "obj-2",
          1
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
          "obj-62",
          0
         ],
         "destination": [
          "obj-63",
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
          "obj-64",
          1
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
          "obj-64",
          0
         ],
         "destination": [
          "obj-66",
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
     "text": "Clattering sticks (poly~ clatter_wood)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      460,
      454,
      210,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p space",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      20,
      520,
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
       1050,
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
         "text": "SPACE: a small outdoor reverb (Schroeder: 4 feedback combs + 2 allpasses per side), so it sounds like a street or yard. Distance = further away: duller, quieter dry sound, relatively more echo.",
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
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          30,
          45,
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
          400,
          45,
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
         "text": "r clatter_distance",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          45,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r clatter_space",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          760,
          45,
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
         "text": "expr 12000.*exp(-$f1*2.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          75,
          180,
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
         "text": "expr 1.-0.7*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          105,
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
         "id": "obj-8",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          600,
          135,
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
          600,
          165,
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
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          75,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "expr $f1*0.35*(0.5+$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          105,
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
         "id": "obj-12",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          760,
          135,
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
          760,
          165,
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
         "text": "expr 0.6+0.3*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          900,
          75,
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
         "id": "obj-15",
         "maxclass": "comment",
         "text": "room size (comb feedback)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          900,
          100,
          160,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          220,
          120,
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
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          220,
          150,
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
         "text": "lores~ 4000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          220,
          180,
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
         "id": "obj-19",
         "maxclass": "comment",
         "text": "reverb input: mono, darkened",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          180,
          200,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "lores~ 12000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          230,
          124,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "*~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          360,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "comb~ 100. 29.7 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          30,
          300,
          170,
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
         "text": "comb~ 100. 37.1 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          205,
          300,
          170,
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
         "text": "comb~ 100. 41.1 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          30,
          330,
          170,
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
         "text": "comb~ 100. 43.7 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          205,
          330,
          170,
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
         "text": "allpass~ 100. 5.0 0.7",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          390,
          150,
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
         "text": "allpass~ 100. 1.7 0.7",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          420,
          150,
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
          30,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          500,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-30"
        }
       },
       {
        "box": {
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "lores~ 12000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          400,
          230,
          124,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "*~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          360,
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
         "text": "comb~ 100. 31.3 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          400,
          300,
          170,
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
         "text": "comb~ 100. 35.9 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          575,
          300,
          170,
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
         "text": "comb~ 100. 40.3 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          400,
          330,
          170,
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
         "text": "comb~ 100. 45.1 0. 1. 0.7",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          575,
          330,
          170,
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
         "text": "allpass~ 100. 5.3 0.7",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          400,
          390,
          150,
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
         "text": "allpass~ 100. 1.9 0.7",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          400,
          420,
          150,
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
          400,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          400,
          500,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-41"
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
          "obj-4",
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
          "obj-5",
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
          "obj-4",
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
          "obj-5",
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
          "obj-16",
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
          "obj-16",
          1
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
          "obj-2",
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
          "obj-6",
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
          "obj-9",
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
          "obj-18",
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
          "obj-14",
          0
         ],
         "destination": [
          "obj-23",
          4
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
          "obj-24",
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
          "obj-24",
          4
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
          "obj-25",
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
          "obj-25",
          4
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
          "obj-26",
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
          "obj-26",
          4
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
          "obj-21",
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
          "obj-31",
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
          "obj-9",
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
          "obj-18",
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
          "obj-14",
          0
         ],
         "destination": [
          "obj-34",
          4
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
          "obj-33",
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
          "obj-35",
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
          "obj-35",
          4
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
          "obj-33",
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
          "obj-36",
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
          "obj-36",
          4
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
          "obj-33",
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
          "obj-37",
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
          "obj-37",
          4
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
          "obj-40",
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
          "obj-41",
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
     "text": "street / yard reverb + Distance",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      520,
      260,
      20
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
      560,
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
         "text": "r clatter_width",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          60,
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
         "text": "r clatter_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          200,
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
     "id": "obj-68"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "comment",
     "text": "Width (mid/side) -> Volume -> soft clip",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      560,
      260,
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
      600,
      80,
      13
     ],
     "id": "obj-70"
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
      618,
      80,
      13
     ],
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      120,
      600,
      45,
      45
     ],
     "id": "obj-72"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "comment",
     "text": "<- click to start audio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      170,
      612,
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
      "obj-60",
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
      "obj-60",
      1
     ],
     "destination": [
      "obj-66",
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
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      1
     ],
     "destination": [
      "obj-66",
      1
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
      "obj-66",
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
      "obj-66",
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
      "obj-68",
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
      "obj-68",
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
      "obj-70",
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
      "obj-71",
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
      "obj-72",
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
      "obj-72",
      1
     ]
    }
   }
  ]
 }
}