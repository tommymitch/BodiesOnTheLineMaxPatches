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
   460
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
     "text": "Procedural Breathing",
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
     "text": "Every control is 0-1. Exertion is the macro: calm/sleeping -> panting (faster, deeper, louder, mouth opens, pauses vanish). Rate/Depth/Pause etc. still shape it. Mouth: 0 = nose, 1 = mouth. In/Out = how much of the breath is inhale.",
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
     "id": "obj-3"
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "comment",
     "text": "INPUT",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      90,
      122,
      20
     ],
     "fontsize": 12,
     "fontface": 1
    }
   },
   {
    "box": {
     "maxclass": "live.slider",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      28,
      95,
      40,
      76
     ],
     "varname": "breath_lungs",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_lungs",
       "parameter_shortname": "Lungs",
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
     "text": "s breath_lungs",
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
     "id": "obj-7",
     "maxclass": "newobj",
     "text": "r breath_lungin",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      14,
      219,
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
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      116,
      215,
      30,
      30
     ],
     "comment": "lungs 0-1 (when used as an abstraction / bpatcher)",
     "id": "obj-8"
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
     "varname": "breath_manual",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_manual",
       "parameter_shortname": "Manual",
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
     "text": "s breath_manual",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      170,
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
     "id": "obj-11"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "text": "GLOBAL",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      176,
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
      176,
      115,
      56,
      48
     ],
     "varname": "breath_exertion",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_exertion",
       "parameter_shortname": "Exertion",
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
     "text": "s breath_exertion",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      176,
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
      242,
      115,
      56,
      48
     ],
     "varname": "breath_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_volume",
       "parameter_shortname": "Volume",
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
     "text": "s breath_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      242,
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
      308,
      115,
      56,
      48
     ],
     "varname": "breath_pan",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_pan",
       "parameter_shortname": "Pan",
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
     "text": "s breath_pan",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      392,
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
     "id": "obj-19"
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "text": "RHYTHM",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      398,
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
      398,
      115,
      56,
      48
     ],
     "varname": "breath_rate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_rate",
       "parameter_shortname": "Rate",
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
     "text": "s breath_rate",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      398,
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
      464,
      115,
      56,
      48
     ],
     "varname": "breath_depth",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_depth",
       "parameter_shortname": "Depth",
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
     "text": "s breath_depth",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464,
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
      530,
      115,
      56,
      48
     ],
     "varname": "breath_inout",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_inout",
       "parameter_shortname": "In/Out",
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
     "text": "s breath_inout",
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
     "varname": "breath_pause",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_pause",
       "parameter_shortname": "Pause",
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
     "text": "s breath_pause",
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
     "varname": "breath_irregular",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_irregular",
       "parameter_shortname": "Irregular",
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
     "text": "s breath_irregular",
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
      746,
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
     "text": "AIRWAY",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      752,
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
      752,
      115,
      56,
      48
     ],
     "varname": "breath_mouth",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_mouth",
       "parameter_shortname": "Mouth",
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
     "text": "s breath_mouth",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      752,
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
      818,
      115,
      56,
      48
     ],
     "varname": "breath_size",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_size",
       "parameter_shortname": "Size",
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
     "text": "s breath_size",
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
     "varname": "breath_bright",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_bright",
       "parameter_shortname": "Bright",
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
     "text": "s breath_bright",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      968,
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
     "id": "obj-39"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "comment",
     "text": "VOICE",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      974,
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
      974,
      115,
      56,
      48
     ],
     "varname": "breath_voice",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_voice",
       "parameter_shortname": "Voice",
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
     "text": "s breath_voice",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      974,
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
      1040,
      115,
      56,
      48
     ],
     "varname": "breath_pitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_pitch",
       "parameter_shortname": "Pitch",
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
     "text": "s breath_pitch",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1040,
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
      1106,
      115,
      56,
      48
     ],
     "varname": "breath_rasp",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_rasp",
       "parameter_shortname": "Rasp",
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
     "text": "s breath_rasp",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1106,
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
      1172,
      115,
      56,
      48
     ],
     "varname": "breath_wheeze",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "breath_wheeze",
       "parameter_shortname": "Wheeze",
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
     "text": "s breath_wheeze",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1172,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "comment",
     "text": "INPUT: Lungs = how full the lungs are. Rising = breathe in, falling = breathe out, faster movement = harder breath. Turn Manual up to 1 to hear it. Drive it from elsewhere with [s breath_lungin] or the inlet.",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      150,
      245,
      560,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p rhythm",
     "numinlets": 0,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      20,
      300,
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
       1000,
       1320
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
         "text": "RHYTHM: schedules each breath. At the start of a cycle it picks this breath's timing and depth (with random variation and an occasional deep sigh), starts the inhale, schedules the exhale, and schedules the next cycle.",
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
         "text": "r breath_rate",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r breath_exertion",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          150,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r breath_pause",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          290,
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
         "text": "r breath_inout",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "r breath_depth",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          550,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "r breath_irregular",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          680,
          50,
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
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          85,
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
         "text": "expr 60000./((6.+30.*$f1)*(1.+1.5*$f2))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          115,
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
         "id": "obj-10",
         "maxclass": "comment",
         "text": "base period ms: 6-36 breaths/min, x2.5 at full Exertion",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          138,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          85,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "expr $f1*0.45*(1.-$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          290,
          115,
          150,
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
         "maxclass": "comment",
         "text": "pause fraction (gone when exerted)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          290,
          138,
          130,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "expr 0.3+$f1*0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          450,
          115,
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
         "text": "inhale share 0.3-0.6",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          450,
          138,
          120,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          85,
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
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "expr (0.25+0.75*$f1)*(0.5+0.7*$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          115,
          210,
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
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          200,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "delay 300",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          230,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "t b b b",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          30,
          260,
          61,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang"
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "comment",
         "text": "<- one bang per breath",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          100,
          230,
          150,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          450,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "expr ($f1/10000.)<($f2*0.12)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          450,
          330,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          450,
          360,
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
         "id": "obj-25",
         "maxclass": "comment",
         "text": "sigh? (longer, deeper breath)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          650,
          330,
          180,
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
          250,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "expr $f2*(1.+($f1/10000.-0.5)*$f3*0.6)*(1.+$f4*0.7)",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          580,
          420,
          300,
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
         "maxclass": "message",
         "text": "$1 40",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          580,
          450,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-29",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          580,
          480,
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
         "id": "obj-30",
         "maxclass": "comment",
         "text": "this breath's depth",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          640,
          480,
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
          30,
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
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "expr $f2*(($f1/10000.)-0.5)*0.8",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          330,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "t f f f",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          30,
          360,
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
         "id": "obj-34",
         "maxclass": "comment",
         "text": "timing jitter",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          240,
          330,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "expr $f2*(1.+$f1)*(1.-$f3)*$f4*(1.+$f5*0.6)",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          30,
          420,
          270,
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
         "text": "expr $f2*(1.+$f1)*(1.-$f3)*(1.-$f4)*(1.+$f5*0.8)",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          30,
          450,
          290,
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
         "maxclass": "newobj",
         "text": "expr $f2*(1.+$f1)*((1.-$f3)*($f4*(1.+$f5*0.6)+(1.-$f4)*(1.+$f5*0.8))+$f3)",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          30,
          480,
          440,
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
         "text": "inhale ms / exhale ms / whole cycle ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          330,
          420,
          240,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "clip 200. 60000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          480,
          520,
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
         "id": "obj-40",
         "maxclass": "comment",
         "text": "-> next cycle",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          590,
          520,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "clip 100. 20000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          250,
          520,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          550,
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
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "clip 100. 20000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          520,
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
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          30,
          550,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "delay",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
          580,
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
         "id": "obj-46",
         "maxclass": "comment",
         "text": "exhale starts when inhale ends",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          605,
          200,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "message",
         "text": "0, 0.5 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          640,
          77,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          30,
          670,
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
         "id": "obj-49",
         "maxclass": "message",
         "text": "0, 1 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          250,
          640,
          63,
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
          250,
          670,
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
         "text": "-~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          710,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "cos~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          740,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          770,
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
         "id": "obj-54",
         "maxclass": "comment",
         "text": "inhale airflow: half-sine",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          795,
          160,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "*~ -1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          710,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          740,
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
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          770,
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
         "text": "*~ -0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          800,
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
         "text": "+~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          830,
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
         "id": "obj-60",
         "maxclass": "newobj",
         "text": "-~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          860,
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
         "id": "obj-61",
         "maxclass": "newobj",
         "text": "cos~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
          890,
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
         "id": "obj-62",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          920,
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
         "id": "obj-63",
         "maxclass": "comment",
         "text": "exhale airflow: phase warped by 1-(1-t)^2, so it peaks early and tails off",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          340,
          830,
          220,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-64",
         "maxclass": "comment",
         "text": "MANUAL INPUT: Lungs is how full the lungs are (0-1). Airflow is how fast it changes: rising = inhale, falling = exhale, faster = harder.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          600,
          300,
          47
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-65",
         "maxclass": "newobj",
         "text": "r breath_lungs",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          620,
          660,
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
         "id": "obj-66",
         "maxclass": "message",
         "text": "$1 20",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          620,
          690,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-67",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          620,
          720,
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
         "id": "obj-68",
         "maxclass": "newobj",
         "text": "tapin~ 200",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          740,
          750,
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
         "id": "obj-69",
         "maxclass": "newobj",
         "text": "tapout~ 50",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          740,
          780,
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
         "id": "obj-70",
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          810,
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
         "id": "obj-71",
         "maxclass": "comment",
         "text": "change over the last 50 ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          830,
          780,
          170,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-72",
         "maxclass": "newobj",
         "text": "*~ 16.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          840,
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
         "id": "obj-73",
         "maxclass": "newobj",
         "text": "onepole~ 6.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          870,
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
         "id": "obj-74",
         "maxclass": "newobj",
         "text": "onepole~ 6.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          900,
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
         "id": "obj-75",
         "maxclass": "comment",
         "text": "x 20 = per second, x 0.8 = a 0->1 rise in ~1.2 s peaks near 1; smoothed",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          710,
          840,
          220,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-76",
         "maxclass": "newobj",
         "text": "clip~ 0. 1.5",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          620,
          940,
          96,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-77",
         "maxclass": "newobj",
         "text": "*~ -1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          940,
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
         "id": "obj-78",
         "maxclass": "newobj",
         "text": "clip~ 0. 1.5",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          740,
          970,
          96,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-79",
         "maxclass": "comment",
         "text": "rising part -> inhale, falling part -> exhale",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          830,
          940,
          150,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-80",
         "maxclass": "newobj",
         "text": "r breath_manual",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          620,
          1010,
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
         "id": "obj-81",
         "maxclass": "message",
         "text": "$1 100",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          620,
          1040,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-82",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          620,
          1070,
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
         "id": "obj-83",
         "maxclass": "newobj",
         "text": "!-~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          1070,
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
         "id": "obj-84",
         "maxclass": "comment",
         "text": "Manual: 0 = automatic rhythm, 1 = Lungs input",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          820,
          1040,
          200,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1110,
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
         "id": "obj-86",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
          1110,
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
         "id": "obj-87",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          1110,
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
         "id": "obj-88",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          350,
          1110,
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
         "id": "obj-89",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1150,
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
         "id": "obj-90",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          1150,
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
         "id": "obj-91",
         "maxclass": "newobj",
         "text": "send~ breath_in",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          1190,
          117,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-92",
         "maxclass": "newobj",
         "text": "send~ breath_ex",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250,
          1190,
          117,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-93",
         "maxclass": "newobj",
         "text": "snapshot~ 30",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1230,
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
         "id": "obj-94",
         "maxclass": "newobj",
         "text": "snapshot~ 30",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          1230,
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
         "id": "obj-95",
         "maxclass": "newobj",
         "text": "s breath_inc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          1260,
          96,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-96",
         "maxclass": "newobj",
         "text": "s breath_exc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250,
          1260,
          96,
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
          "obj-8",
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
          "obj-4",
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
          "obj-12",
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
          "obj-6",
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
          2
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
          "obj-7",
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
          "obj-20",
          1
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
          "obj-17",
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
          "obj-7",
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
          "obj-24",
          3
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
          "obj-7",
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
          "obj-9",
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
          "obj-12",
          0
         ],
         "destination": [
          "obj-35",
          2
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
          3
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
          "obj-36",
          1
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
          "obj-36",
          2
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
          3
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
          "obj-37",
          1
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
          "obj-37",
          2
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
          3
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
          "obj-35",
          4
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
          "obj-36",
          4
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
          "obj-37",
          4
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
          "obj-35",
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
          "obj-36",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-33",
          2
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
          1
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
          "obj-42",
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
          "obj-48",
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
          "obj-29",
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
          "obj-50",
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
          "obj-56",
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
          "obj-29",
          0
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
          "obj-67",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
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
          "obj-67",
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
          "obj-69",
          0
         ],
         "destination": [
          "obj-70",
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
          "obj-72",
          0
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
          "obj-73",
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
          "obj-74",
          0
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
          0
         ],
         "destination": [
          "obj-77",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          0
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
          "obj-80",
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
          "obj-83",
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
          "obj-85",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-83",
          0
         ],
         "destination": [
          "obj-85",
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
          "obj-86",
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
          "obj-86",
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
          "obj-87",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-83",
          0
         ],
         "destination": [
          "obj-87",
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
          "obj-88",
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
          "obj-88",
          1
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
          "obj-89",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-86",
          0
         ],
         "destination": [
          "obj-89",
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
          "obj-90",
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
          "obj-90",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-89",
          0
         ],
         "destination": [
          "obj-91",
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
          "obj-92",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-89",
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
          "obj-90",
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
          "obj-93",
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
          "obj-94",
          0
         ],
         "destination": [
          "obj-96",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-50"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "comment",
     "text": "breath timing + airflow curves (send~ breath_in / breath_ex)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      324,
      220,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p airway",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      260,
      300,
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
       1120,
       1200
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
         "text": "AIRWAY: airflow -> turbulence noise (loudness ~ flow^2) -> nose or mouth resonances. Size scales every resonance (small = higher). Voice adds a sighing/grunting tone on the exhale, Rasp a snore-like flutter on the inhale, Wheeze a thin whistle on the exhale.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          900,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "receive~ breath_in",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          50,
          138,
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
         "text": "receive~ breath_ex",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          50,
          138,
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
         "text": "r breath_mouth",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          620,
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
         "text": "r breath_exertion",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          720,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
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
         "text": "expr $f1+$f2*0.7",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          110,
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
         "text": "clip 0. 1.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          620,
          140,
          82,
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
         "text": "$1 200",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          620,
          170,
          56,
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
          620,
          200,
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
         "text": "!-~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          720,
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
         "maxclass": "comment",
         "text": "Exertion opens the mouth",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          110,
          160,
          20
         ],
         "fontsize": 12
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
          30,
          90,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "*~ 2.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          150,
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
         "text": "r breath_rasp",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          190,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "expr $f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          220,
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
         "id": "obj-19",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30,
          250,
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
          30,
          280,
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
         "text": "r breath_rasp",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          150,
          190,
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
         "id": "obj-22",
         "maxclass": "newobj",
         "text": "expr 1.-$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          150,
          220,
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
         "id": "obj-23",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          150,
          250,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          150,
          280,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "rand~ 6.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          190,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "*~ 8.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          220,
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
         "text": "+~ 32.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "phasor~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          280,
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
         "text": "*~ -1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          310,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          340,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          370,
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
          300,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "*~ 3.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          430,
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
         "id": "obj-34",
         "maxclass": "comment",
         "text": "soft-palate flutter ~32 Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          310,
          160,
          20
         ],
         "fontsize": 12
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
          300,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "+~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          490,
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
         "maxclass": "comment",
         "text": "gain = (1-Rasp) + Rasp x flutter",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          490,
          220,
          20
         ],
         "fontsize": 12
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
          30,
          520,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          570,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
          570,
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
         "text": "*~ 3.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          130,
          600,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          630,
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
         "text": "r breath_pitch",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          300,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "expr 80.*exp($f1*1.3)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          330,
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
         "id": "obj-45",
         "maxclass": "message",
         "text": "$1 100",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          600,
          360,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          600,
          390,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "rand~ 8.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          720,
          400,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "*~ 0.03",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          720,
          430,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          720,
          460,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          490,
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
         "text": "phasor~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          520,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "-~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          550,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "r breath_voice",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          840,
          300,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          840,
          330,
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
         "id": "obj-55",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          840,
          360,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-56",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          840,
          390,
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
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "-~ 0.25",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          430,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "maximum~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          460,
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
         "id": "obj-59",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          490,
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
         "id": "obj-60",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
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
         "id": "obj-61",
         "maxclass": "comment",
         "text": "voicing only when exhale flow > 0.25",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          680,
          590,
          220,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-62",
         "maxclass": "comment",
         "text": "inhale through NOSE",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          678,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          810,
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
         "id": "obj-64",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          700,
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
         "id": "obj-65",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*300.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          730,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-66",
         "maxclass": "newobj",
         "text": "reson~ 1 300. 3",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          765,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-67",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          170,
          700,
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
         "id": "obj-68",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*2500.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          170,
          730,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-69",
         "maxclass": "newobj",
         "text": "reson~ 0.5 2500. 4",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          170,
          765,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "comment",
         "text": "inhale through MOUTH (hissier)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          330,
          678,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-71",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          810,
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
         "id": "obj-72",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          700,
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
         "id": "obj-73",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*1800.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          730,
          130,
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
         "maxclass": "newobj",
         "text": "reson~ 1 1800. 2",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          330,
          765,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-75",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          470,
          700,
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
         "id": "obj-76",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*3200.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          470,
          730,
          130,
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
         "maxclass": "newobj",
         "text": "reson~ 0.6 3200. 3",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          470,
          765,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-78",
         "maxclass": "comment",
         "text": "exhale through NOSE",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          848,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-79",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          980,
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
         "id": "obj-80",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          870,
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
         "id": "obj-81",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*250.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          900,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-82",
         "maxclass": "newobj",
         "text": "reson~ 1 250. 2.5",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          30,
          935,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-83",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          170,
          870,
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
         "id": "obj-84",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*2200.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          170,
          900,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "newobj",
         "text": "reson~ 0.4 2200. 3",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          170,
          935,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-86",
         "maxclass": "comment",
         "text": "exhale through MOUTH (\"hhh\" formants)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          330,
          848,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "newobj",
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          980,
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
         "id": "obj-88",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          870,
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
         "id": "obj-89",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*650.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          330,
          900,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-90",
         "maxclass": "newobj",
         "text": "reson~ 1 650. 4",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          330,
          935,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-91",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          470,
          870,
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
         "id": "obj-92",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*1150.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          470,
          900,
          130,
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
         "maxclass": "newobj",
         "text": "reson~ 0.7 1150. 5",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          470,
          935,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-94",
         "maxclass": "newobj",
         "text": "r breath_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          610,
          870,
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
         "id": "obj-95",
         "maxclass": "newobj",
         "text": "expr 1.3*exp(-$f1*0.6)*2500.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          610,
          900,
          130,
          22
         ],
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-96",
         "maxclass": "newobj",
         "text": "reson~ 0.4 2500. 6",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          610,
          935,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-97",
         "maxclass": "newobj",
         "text": "lores~ 1800. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1060,
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
         "id": "obj-98",
         "maxclass": "comment",
         "text": "nose is muffled",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          150,
          1060,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-99",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          1095,
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
         "id": "obj-100",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          1095,
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
         "id": "obj-101",
         "maxclass": "newobj",
         "text": "*~ 300.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          820,
          900,
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
         "id": "obj-102",
         "maxclass": "newobj",
         "text": "+~ 550.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          820,
          930,
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
         "id": "obj-103",
         "maxclass": "newobj",
         "text": "reson~ 1. 700. 80.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          820,
          960,
          130,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-104",
         "maxclass": "newobj",
         "text": "r breath_wheeze",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          960,
          900,
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
         "id": "obj-105",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*8.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          960,
          930,
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
         "id": "obj-106",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          960,
          960,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-107",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          960,
          990,
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
         "id": "obj-108",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          820,
          1095,
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
         "id": "obj-109",
         "maxclass": "comment",
         "text": "wheeze: narrow whistle rising with exhale flow",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          820,
          1000,
          160,
          33
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          1150,
          30,
          30
         ],
         "comment": "breath (mono)",
         "id": "obj-110"
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
          "obj-2",
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
          "obj-13",
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
          "obj-15",
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
          "obj-31",
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
          "obj-35",
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
          "obj-36",
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
          "obj-36",
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
          "obj-38",
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
          "obj-40",
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
          "obj-39",
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
          "obj-41",
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
          "obj-46",
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
          "obj-50",
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
          "obj-51",
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
          "obj-3",
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
          "obj-56",
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
          "obj-52",
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
          "obj-59",
          0
         ],
         "destination": [
          "obj-60",
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
          "obj-63",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
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
          "obj-68",
          0
         ],
         "destination": [
          "obj-69",
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
          "obj-63",
          0
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
          "obj-73",
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
          "obj-74",
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
          "obj-74",
          0
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
          "obj-71",
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
          "obj-77",
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
          "obj-77",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-77",
          0
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
          "obj-80",
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
          "obj-81",
          0
         ],
         "destination": [
          "obj-82",
          2
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
          "obj-82",
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
          "obj-79",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-83",
          0
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
          2
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
          "obj-85",
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
          "obj-79",
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
          "obj-89",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-89",
          0
         ],
         "destination": [
          "obj-90",
          2
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
          "obj-90",
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
          "obj-87",
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
          2
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
          "obj-93",
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
          "obj-87",
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
          0
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
          "obj-96",
          2
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
          "obj-96",
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
          "obj-96",
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
          "obj-87",
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
          "obj-97",
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
          "obj-97",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-97",
          0
         ],
         "destination": [
          "obj-99",
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
          "obj-99",
          1
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
          "obj-100",
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
          "obj-100",
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
          "obj-100",
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
          "obj-101",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-101",
          0
         ],
         "destination": [
          "obj-102",
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
          "obj-103",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-102",
          0
         ],
         "destination": [
          "obj-103",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-104",
          0
         ],
         "destination": [
          "obj-105",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-105",
          0
         ],
         "destination": [
          "obj-106",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-106",
          0
         ],
         "destination": [
          "obj-107",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-103",
          0
         ],
         "destination": [
          "obj-108",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-107",
          0
         ],
         "destination": [
          "obj-108",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-99",
          0
         ],
         "destination": [
          "obj-110",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-100",
          0
         ],
         "destination": [
          "obj-110",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-108",
          0
         ],
         "destination": [
          "obj-110",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-52"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "comment",
     "text": "airflow -> noise -> nose / mouth resonances, voice, rasp, wheeze",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      260,
      324,
      220,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p master",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      500,
      300,
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
       460
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
         "text": "MASTER: Bright (closeness lowpass) -> Volume -> soft clip -> Pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          420,
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
         "comment": "breath",
         "id": "obj-2"
        }
       },
       {
        "box": {
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r breath_bright",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          40,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "expr 1500.*exp($f1*2.2)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          70,
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
         "id": "obj-5",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
          100,
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
          200,
          130,
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
         "text": "lores~ 8000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          150,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "r breath_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          360,
          40,
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
         "text": "expr $f1*$f1*2.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          360,
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
         "id": "obj-10",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          360,
          100,
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
          360,
          130,
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
          190,
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
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          220,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "r breath_pan",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          190,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          200,
          220,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "expr cos($f1*1.570796)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          250,
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
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "expr sin($f1*1.570796)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          360,
          250,
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
         "id": "obj-18",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
          280,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          200,
          310,
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
         "id": "obj-20",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          360,
          280,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-21",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          360,
          310,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          120,
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
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          120,
          400,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-25"
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
          "obj-6",
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
          "obj-15",
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
          "obj-13",
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
          "obj-13",
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
          "obj-21",
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
          "obj-22",
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
          "obj-25",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-54"
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "comment",
     "text": "Bright -> Volume -> soft clip -> Pan",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      500,
      324,
      220,
      20
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "text": "r breath_inc",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      260,
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
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "orientation": 1,
     "floatoutput": 1,
     "size": 1.5,
     "ignoreclick": 1,
     "patching_rect": [
      360,
      390,
      200,
      22
     ],
     "id": "obj-57"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "comment",
     "text": "inhale airflow",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      570,
      390,
      120,
      20
     ],
     "fontsize": 12
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "text": "r breath_exc",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      260,
      440,
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
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "orientation": 1,
     "floatoutput": 1,
     "size": 1.5,
     "ignoreclick": 1,
     "patching_rect": [
      360,
      440,
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
     "text": "exhale airflow",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      570,
      440,
      120,
      20
     ],
     "fontsize": 12
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
      390,
      80,
      13
     ],
     "id": "obj-62"
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
      408,
      80,
      13
     ],
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      120,
      390,
      45,
      45
     ],
     "id": "obj-64"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "comment",
     "text": "<- click to start audio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      120,
      440,
      140,
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
      "obj-5",
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
      "obj-54",
      1
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
      "obj-54",
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
      "obj-54",
      1
     ],
     "destination": [
      "obj-64",
      1
     ]
    }
   }
  ]
 }
}