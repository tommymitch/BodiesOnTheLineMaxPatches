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
   1200,
   520
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
     "text": "Procedural Rain",
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
     "text": "Every control is 0-1. Intensity drives density and loudness across all layers (drizzle -> downpour). Turn audio on with the speaker below. Voice files rain_drop / rain_hit / rain_tick must stay in the same folder as this patch.",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      44,
      900,
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
      115,
      56,
      48
     ],
     "varname": "rain_intensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_intensity",
       "parameter_shortname": "Intensity",
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
     "text": "s rain_intensity",
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
     "varname": "rain_width",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_width",
       "parameter_shortname": "Width",
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
     "text": "s rain_width",
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
     "varname": "rain_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_volume",
       "parameter_shortname": "Volume",
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
     "text": "s rain_volume",
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236,
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
     "id": "obj-11"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "comment",
     "text": "WASH",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      242,
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
      242,
      115,
      56,
      48
     ],
     "varname": "rain_washlevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_washlevel",
       "parameter_shortname": "Level",
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
     "text": "s rain_washlevel",
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
     "varname": "rain_brightness",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_brightness",
       "parameter_shortname": "Bright",
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
     "text": "s rain_brightness",
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
     "varname": "rain_rumble",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_rumble",
       "parameter_shortname": "Rumble",
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
     "text": "s rain_rumble",
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
     "varname": "rain_gusts",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_gusts",
       "parameter_shortname": "Gusts",
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
     "text": "s rain_gusts",
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
     "id": "obj-21"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "comment",
     "text": "DROPLETS",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      530,
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
      530,
      115,
      56,
      48
     ],
     "varname": "rain_droplevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_droplevel",
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
     "text": "s rain_droplevel",
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
     "varname": "rain_dropdensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_dropdensity",
       "parameter_shortname": "Density",
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
     "text": "s rain_dropdensity",
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
     "varname": "rain_droppitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_droppitch",
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
     "text": "s rain_droppitch",
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
     "varname": "rain_dropsize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_dropsize",
       "parameter_shortname": "Size",
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
     "text": "s rain_dropsize",
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
     "id": "obj-31"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "text": "SURFACE",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      818,
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
      818,
      115,
      56,
      48
     ],
     "varname": "rain_surflevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_surflevel",
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
     "text": "s rain_surflevel",
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
     "varname": "rain_surfdensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_surfdensity",
       "parameter_shortname": "Density",
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
     "text": "s rain_surfdensity",
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
     "varname": "rain_hardness",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_hardness",
       "parameter_shortname": "Hardness",
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
     "text": "s rain_hardness",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1016,
      115,
      56,
      48
     ],
     "varname": "rain_tone",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_tone",
       "parameter_shortname": "Tone",
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
     "text": "s rain_tone",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1016,
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
      1100,
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
     "id": "obj-41"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "comment",
     "text": "WINDOW",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1106,
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
      1106,
      115,
      56,
      48
     ],
     "varname": "rain_glasslevel",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_glasslevel",
       "parameter_shortname": "Level",
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
     "text": "s rain_glasslevel",
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
     "varname": "rain_glassdensity",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_glassdensity",
       "parameter_shortname": "Density",
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
     "text": "s rain_glassdensity",
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
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1238,
      115,
      56,
      48
     ],
     "varname": "rain_panesize",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_panesize",
       "parameter_shortname": "Pane Size",
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
     "text": "s rain_panesize",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1238,
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
      1304,
      115,
      56,
      48
     ],
     "varname": "rain_ring",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "rain_ring",
       "parameter_shortname": "Ring",
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
     "text": "s rain_ring",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1304,
      177,
      60,
      22
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p wash",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      20,
      290,
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
       900,
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
         "text": "WASH: the dense distant rain bed. Pink noise plus a dense random \"patter\" of single-sample impulses, lowpassed (Brightness), with slow random swells (Gusts). Rumble adds a low roar.",
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
         "text": "r rain_intensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r rain_washlevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          180,
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
         "text": "r rain_brightness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          340,
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
         "text": "r rain_gusts",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          500,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "r rain_rumble",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          650,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr 1.-2.*(30.+4000.*$f1*$f1)/44100.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          85,
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
         "id": "obj-8",
         "maxclass": "comment",
         "text": "patter impulses/sec rise with Intensity",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          108,
          240,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-9",
         "maxclass": "newobj",
         "text": "expr 400.*exp($f1*3.4)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          340,
          85,
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
         "id": "obj-10",
         "maxclass": "comment",
         "text": "cutoff 400-12000 Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          340,
          108,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "expr $f1*0.7",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          500,
          85,
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
         "text": "$1 100",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          500,
          115,
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
          500,
          145,
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
         "text": "rand~ 0.15",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          180,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
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
         "id": "obj-16",
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
          240,
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
         "maxclass": "comment",
         "text": "gust envelope",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          560,
          240,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          150,
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
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*(0.15+0.85*$f2)*0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          180,
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
         "id": "obj-20",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          180,
          210,
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
          180,
          240,
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
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
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
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          90,
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
         "id": "obj-24",
         "maxclass": "newobj",
         "text": ">~ 0.99",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          90,
          320,
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
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          170,
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
         "id": "obj-26",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          90,
          350,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          90,
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
         "id": "obj-28",
         "maxclass": "newobj",
         "text": "lores~ 2000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          415,
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
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          485,
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
          530,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-31"
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          260,
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
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          320,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": ">~ 0.99",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          320,
          320,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          400,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          320,
          350,
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
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          320,
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
         "text": "lores~ 2000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          260,
          415,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          260,
          485,
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
          260,
          530,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-41"
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "comment",
         "text": "L and R use independent noise, so the bed is naturally wide",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          560,
          380,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "lores~ 100. 0.1",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          560,
          320,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "lores~ 100. 0.1",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          560,
          350,
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*(0.2+0.8*$f2)*4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          115,
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
         "id": "obj-48",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700,
          320,
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
          700,
          350,
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
          560,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          435,
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
         "maxclass": "comment",
         "text": "Rumble: low roar, follows the gusts too",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          620,
          435,
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
          "obj-4",
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
          "obj-3",
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
          "obj-7",
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
          "obj-22",
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
          "obj-16",
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
          "obj-21",
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
          "obj-7",
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
          "obj-32",
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
          "obj-16",
          0
         ],
         "destination": [
          "obj-39",
          1
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
          "obj-21",
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
          "obj-6",
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
          "obj-2",
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
          "obj-45",
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
          "obj-16",
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
          "obj-31",
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
          "obj-41",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-51"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "comment",
     "text": "Pink noise + dense patter bed",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      314,
      230,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p droplets",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      270,
      290,
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
       1250,
       760
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
         "text": "DROPLETS: close drops landing in puddles. Each event is a pitched \"plink\" (see rain_drop.maxpat).",
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
         "text": "poly~ rain_drop 24",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          430,
          470,
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
         "text": "Random (Poisson) timing: up to 60 events/sec, scaled by density^2 and Intensity",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          35,
          520,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r rain_dropdensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          60,
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
         "text": "r rain_intensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
          60,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          90,
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
         "text": "expr $f1*$f1*(0.08+0.92*$f2)*60.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          120,
          236,
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
          150,
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
         "text": "> 0.05",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          180,
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
          60,
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
          90,
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
          120,
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
          150,
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
          210,
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
         "text": "clip 1. 2000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
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
         "maxclass": "comment",
         "text": "<- next wait time (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          240,
          280,
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
          430,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b b b b",
         "numinlets": 1,
         "numoutlets": 5,
         "patching_rect": [
          430,
          245,
          89,
          22
         ],
         "outlettype": [
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
         "text": "pack f f f f f",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          430,
          390,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "random 10000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          275,
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
         "text": "expr 500.*exp($f2*2.3)*exp((($f1/10000.)-0.5)*1.)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          345,
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
         "text": "r rain_droppitch",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          500,
          310,
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
         "id": "obj-23",
         "maxclass": "comment",
         "text": "f0: 500-5000 Hz (Pitch)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          367,
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
          580,
          275,
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
         "text": "expr 1.2+($f1/10000.)*1.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          580,
          345,
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
         "text": "pitch rise ratio",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          580,
          367,
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
          730,
          275,
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
         "text": "expr (0.15+0.85*($f1/10000.)*($f1/10000.))*0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          730,
          345,
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
         "text": "amplitude",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          730,
          367,
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
          880,
          275,
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
         "text": "expr (6.+$f2*70.)*(0.5+($f1/10000.))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          880,
          345,
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
         "maxclass": "newobj",
         "text": "r rain_dropsize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          950,
          310,
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
         "id": "obj-33",
         "maxclass": "comment",
         "text": "duration ms (Size)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          880,
          367,
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
          1030,
          275,
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
          1030,
          345,
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
          1030,
          367,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          430,
          425,
          147,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "r rain_droplevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          590,
          510,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          590,
          540,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          590,
          570,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          590,
          600,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          610,
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
          510,
          610,
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
          430,
          650,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-44"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          510,
          650,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-45"
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
          "obj-32",
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
          "obj-19",
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
          "obj-2",
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
          "obj-2",
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
          "obj-2",
          1
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
          "obj-41",
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
          "obj-42",
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
       }
      ]
     },
     "id": "obj-53"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "comment",
     "text": "Pitched bubble plinks (poly~ rain_drop)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270,
      314,
      230,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p surface",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      520,
      290,
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
       1400,
       760
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
         "text": "SURFACE: drops hitting a hard surface (roof, pavement, leaves). Each event is a filtered noise burst (see rain_hit.maxpat).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          5,
          750,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "poly~ rain_hit 32",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          430,
          470,
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
         "text": "Random (Poisson) timing: up to 120 events/sec, scaled by density^2 and Intensity",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          35,
          520,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r rain_surfdensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          60,
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
         "text": "r rain_intensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
          60,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          90,
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
         "text": "expr $f1*$f1*(0.08+0.92*$f2)*120.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          120,
          243,
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
          150,
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
         "text": "> 0.05",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          180,
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
          60,
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
          90,
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
          120,
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
          150,
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
          210,
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
         "text": "clip 1. 2000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
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
         "maxclass": "comment",
         "text": "<- next wait time (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          240,
          280,
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
          430,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          430,
          245,
          103,
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
          430,
          390,
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
          430,
          275,
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
         "text": "expr 250.*exp($f2*2.8)*exp((($f1/10000.)-0.5)*0.9)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          345,
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
         "text": "r rain_tone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          500,
          310,
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
         "id": "obj-23",
         "maxclass": "comment",
         "text": "resonant freq (Tone)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          367,
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
          580,
          275,
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
         "text": "expr 2.+$f2*25.*(0.4+($f1/10000.))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          580,
          345,
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
         "text": "r rain_hardness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          650,
          310,
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
         "id": "obj-27",
         "maxclass": "comment",
         "text": "Q (Hardness)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          580,
          367,
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
          730,
          275,
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
         "text": "expr (0.1+0.9*($f1/10000.)*($f1/10000.))*0.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          730,
          345,
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
         "text": "amplitude",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          730,
          367,
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
          880,
          275,
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
         "text": "expr (3.+(1.-$f2)*35.)*(0.5+($f1/10000.))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          880,
          345,
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
         "text": "r rain_hardness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          950,
          310,
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
         "id": "obj-34",
         "maxclass": "comment",
         "text": "duration ms (Hardness)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          880,
          367,
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
          1030,
          275,
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
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1030,
          345,
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
          1030,
          367,
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
          1180,
          275,
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
         "text": "expr $f2*$f2*0.8+($f1/10000.)*0.1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1180,
          345,
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
         "maxclass": "newobj",
         "text": "r rain_hardness",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1250,
          310,
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
         "id": "obj-41",
         "maxclass": "comment",
         "text": "click amount (Hardness)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1180,
          367,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4 $5 $6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          430,
          425,
          168,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "r rain_surflevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          590,
          510,
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
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          590,
          540,
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
         "id": "obj-45",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          590,
          570,
          49,
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
          590,
          600,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          610,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          510,
          610,
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
          430,
          650,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-49"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          510,
          650,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-50"
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
          "obj-40",
          0
         ],
         "destination": [
          "obj-39",
          1
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
          "obj-19",
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
          "obj-2",
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
          "obj-2",
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
          "obj-2",
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
          "obj-46",
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
          "obj-50",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-55"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "comment",
     "text": "Resonant noise hits (poly~ rain_hit)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      520,
      314,
      230,
      33
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p window",
     "numinlets": 0,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      770,
      290,
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
       1400,
       1150
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
         "text": "WINDOW: drops tapping a glass pane. Short ticks (see rain_tick.maxpat) excite a bank of resonators tuned like pane modes. Pane Size sets the pitch, Ring sets how long it rings.",
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
         "text": "poly~ rain_tick 24",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          430,
          470,
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
         "text": "Random (Poisson) timing: up to 40 events/sec, scaled by density^2 and Intensity",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30,
          35,
          520,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "r rain_glassdensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          60,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "r rain_intensity",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          190,
          60,
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
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          90,
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
         "text": "expr $f1*$f1*(0.08+0.92*$f2)*40.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          120,
          236,
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
          150,
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
         "text": "> 0.05",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          190,
          180,
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
          60,
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
          90,
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
          120,
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
          150,
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
          210,
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
         "text": "clip 1. 2000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
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
         "maxclass": "comment",
         "text": "<- next wait time (ms), loops back into delay",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          240,
          280,
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
          430,
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
         "id": "obj-18",
         "maxclass": "newobj",
         "text": "t b b b b",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          430,
          245,
          75,
          22
         ],
         "outlettype": [
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
         "text": "pack f f f f",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          430,
          390,
          160,
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
          430,
          275,
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
         "text": "expr 2500.+($f1/10000.)*4000.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          430,
          345,
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
         "text": "tick freq",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          367,
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
          580,
          275,
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
         "text": "expr (0.1+0.9*($f1/10000.)*($f1/10000.))*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          580,
          345,
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
         "text": "amplitude",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          580,
          367,
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
          730,
          275,
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
         "text": "expr 1.+($f1/10000.)*4.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          730,
          345,
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
         "text": "duration ms",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          730,
          367,
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
          880,
          275,
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
         "text": "expr ($f1/10000.)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          880,
          345,
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
         "text": "pan",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          880,
          367,
          140,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-32",
         "maxclass": "message",
         "text": "note $1 $2 $3 $4",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          430,
          425,
          126,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-33",
         "maxclass": "newobj",
         "text": "r rain_panesize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          500,
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
         "id": "obj-34",
         "maxclass": "newobj",
         "text": "r rain_ring",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          30,
          600,
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
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "expr 3.+$f1*$f1*120.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          30,
          630,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "expr 0.5+$f1*3.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          180,
          630,
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
         "id": "obj-37",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          180,
          660,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          180,
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
         "id": "obj-39",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          900,
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
         "id": "obj-40",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          850,
          900,
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
         "text": "expr 1400.*exp(-$f1*1.8)*0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          430,
          530,
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
         "id": "obj-42",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          430,
          720,
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
         "id": "obj-43",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          430,
          780,
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
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "expr 1400.*exp(-$f1*1.8)*1.0",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          565,
          530,
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
         "id": "obj-45",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          565,
          720,
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
         "id": "obj-46",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          565,
          780,
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
         "id": "obj-47",
         "maxclass": "newobj",
         "text": "expr 1400.*exp(-$f1*1.8)*1.59",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          700,
          530,
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
         "id": "obj-48",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          700,
          720,
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
         "id": "obj-49",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          700,
          780,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "expr 1400.*exp(-$f1*1.8)*2.14",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          835,
          530,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          835,
          720,
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
         "id": "obj-52",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          835,
          780,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "expr 1400.*exp(-$f1*1.8)*2.65",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          970,
          530,
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
         "id": "obj-54",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          970,
          720,
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
         "id": "obj-55",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          970,
          780,
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
         "id": "obj-56",
         "maxclass": "newobj",
         "text": "expr 1400.*exp(-$f1*1.8)*3.91",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1105,
          530,
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
         "id": "obj-57",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          1105,
          720,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 10.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          1105,
          780,
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
         "id": "obj-59",
         "maxclass": "comment",
         "text": "pane-mode resonators: top row = left, bottom row = right",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          830,
          360,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-60",
         "maxclass": "newobj",
         "text": "r rain_glasslevel",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          900,
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
         "id": "obj-61",
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          930,
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
         "id": "obj-62",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          600,
          960,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-63",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          600,
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
         "id": "obj-64",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          430,
          1030,
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
          430,
          1070,
          30,
          30
         ],
         "comment": "left",
         "id": "obj-65"
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
          850,
          1030,
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
          850,
          1070,
          30,
          30
         ],
         "comment": "right",
         "id": "obj-67"
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
          "obj-19",
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
          "obj-2",
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
          "obj-33",
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
          "obj-2",
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
          2
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
          "obj-42",
          3
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
          "obj-39",
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
          "obj-43",
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
          "obj-43",
          2
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
          3
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
          "obj-40",
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
          "obj-44",
          0
         ],
         "destination": [
          "obj-45",
          2
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
          "obj-45",
          3
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
          "obj-39",
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
          "obj-46",
          2
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
          "obj-46",
          3
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
          "obj-40",
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
          "obj-47",
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
          "obj-48",
          2
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
          "obj-48",
          3
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
          "obj-39",
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
          "obj-49",
          2
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
          "obj-49",
          3
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
          "obj-40",
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
          "obj-50",
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
          "obj-35",
          0
         ],
         "destination": [
          "obj-51",
          3
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
          "obj-39",
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
          "obj-52",
          2
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
          "obj-52",
          3
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
          "obj-40",
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
          "obj-53",
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
          "obj-54",
          2
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
          "obj-54",
          3
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
          "obj-39",
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
          "obj-55",
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
          2
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
          "obj-55",
          3
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
          "obj-40",
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
          "obj-56",
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
          2
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
          "obj-57",
          3
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
          "obj-39",
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
          "obj-58",
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
          2
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
          "obj-58",
          3
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
          "obj-40",
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
          "obj-40",
          1
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
          "obj-39",
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
          "obj-64",
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
          "obj-40",
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
          "obj-63",
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
          "obj-66",
          0
         ],
         "destination": [
          "obj-67",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-57"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "comment",
     "text": "Glass ticks + pane resonators (poly~ rain_tick)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      770,
      314,
      230,
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
      400,
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
         "text": "r rain_width",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          90,
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
         "id": "obj-10",
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
         "id": "obj-11",
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
         "id": "obj-12",
         "maxclass": "comment",
         "text": "side x Width",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          260,
          180,
          100,
          20
         ],
         "fontsize": 12
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
         "text": "r rain_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          220,
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
          250,
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
          280,
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
          "obj-7",
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
          "obj-10",
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
          "obj-11",
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
          "obj-11",
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
     "id": "obj-59"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "comment",
     "text": "Width (mid/side) -> Volume -> soft clip",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      400,
      260,
      20
     ],
     "fontsize": 11
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "comment",
     "text": "every layer sums into master (signals into one inlet are added)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      350,
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
      440,
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
      458,
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
      440,
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
      170,
      452,
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
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      1
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
      "obj-53",
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
      1
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
      "obj-55",
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
      "obj-55",
      1
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
      "obj-57",
      1
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
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
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
      "obj-59",
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
      "obj-59",
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