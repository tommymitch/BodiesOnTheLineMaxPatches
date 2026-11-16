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
   1180,
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
     "text": "Procedural Heartbeat",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      10,
      400,
      32
     ],
     "fontsize": 22,
     "fontface": 1,
     "id": "obj-1"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Every control is 0-1. Rate = 40-200 BPM. Weight: 0 = clinical/stethoscope, 1 = deep film-score thump (use headphones or a sub - it lives around 30-70 Hz). Each beat is 'lub' (S1) then 'dub' (S2): pitched thumps with a valve click, played by poly~ heart_valve (keep heart_valve.maxpat in this folder). Gap = space between lub and dub (the double pulse). Breath = how much the heart speeds up on each inhale. Irregular = skipped/early beats. Link = follow the Breathing patch's breaths instead of the internal ones (open Procedural_Breathing too). Other patches can sync to every lub with [r heart_beat].",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      44,
      1100,
      62
     ],
     "fontsize": 12,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      14,
      115,
      470,
      150
     ],
     "bgcolor": [
      0.75,
      0.2,
      0.25,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "GLOBAL",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      118,
      458,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_volume",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-5"
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
      165,
      56,
      48
     ],
     "varname": "heart_volume",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_volume",
       "parameter_shortname": "Volume",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_rate",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      86,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
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
      165,
      56,
      48
     ],
     "varname": "heart_rate",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.19
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_rate",
       "parameter_shortname": "Rate",
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
     "maxclass": "newobj",
     "text": "s heart_rate",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      86,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_var",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      152,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-11"
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
      165,
      56,
      48
     ],
     "varname": "heart_var",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.35
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_var",
       "parameter_shortname": "Variability",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_var",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      152,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_breath",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      218,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-14"
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
      165,
      56,
      48
     ],
     "varname": "heart_breath",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_breath",
       "parameter_shortname": "Breath",
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
     "maxclass": "newobj",
     "text": "s heart_breath",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      218,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_irreg",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      284,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-17"
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
      165,
      56,
      48
     ],
     "varname": "heart_irreg",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_irreg",
       "parameter_shortname": "Irregular",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_irreg",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      284,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_gap",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      350,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-20"
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
      165,
      56,
      48
     ],
     "varname": "heart_gap",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_gap",
       "parameter_shortname": "Gap",
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
     "maxclass": "newobj",
     "text": "s heart_gap",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      350,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_link",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      416,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-23"
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
      165,
      56,
      48
     ],
     "varname": "heart_link",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_link",
       "parameter_shortname": "Link",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_link",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      416,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      502,
      115,
      338,
      150
     ],
     "bgcolor": [
      0.75,
      0.2,
      0.25,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-26"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "VALVES",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      508,
      118,
      326,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-27"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_weight",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      508,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-28"
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
      508,
      165,
      56,
      48
     ],
     "varname": "heart_weight",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.9
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_weight",
       "parameter_shortname": "Weight",
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
     "maxclass": "newobj",
     "text": "s heart_weight",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      508,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_force",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      574,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-31"
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
      574,
      165,
      56,
      48
     ],
     "varname": "heart_force",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_force",
       "parameter_shortname": "Force",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-32"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_force",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      574,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_size",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      640,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-34"
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
      640,
      165,
      56,
      48
     ],
     "varname": "heart_size",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.55
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_size",
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
     "maxclass": "newobj",
     "text": "s heart_size",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      640,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_split",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      706,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-37"
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
      706,
      165,
      56,
      48
     ],
     "varname": "heart_split",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_split",
       "parameter_shortname": "Split",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_split",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      706,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_muffle",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      772,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-40"
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
      772,
      165,
      56,
      48
     ],
     "varname": "heart_muffle",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_muffle",
       "parameter_shortname": "Muffle",
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
     "maxclass": "newobj",
     "text": "s heart_muffle",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      772,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      858,
      115,
      272,
      150
     ],
     "bgcolor": [
      0.75,
      0.2,
      0.25,
      0.12
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "EXTRA",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      864,
      118,
      260,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_murmur",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      864,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-45"
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
      864,
      165,
      56,
      48
     ],
     "varname": "heart_murmur",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_murmur",
       "parameter_shortname": "Murmur",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_murmur",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      864,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-47"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_mtone",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      930,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-48"
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
      930,
      165,
      56,
      48
     ],
     "varname": "heart_mtone",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_mtone",
       "parameter_shortname": "Tone",
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
     "maxclass": "newobj",
     "text": "s heart_mtone",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      930,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_gallop",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      996,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-51"
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
      996,
      165,
      56,
      48
     ],
     "varname": "heart_gallop",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_gallop",
       "parameter_shortname": "Gallop",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-52"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_gallop",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      996,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-53"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_set_pulse",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1062,
      140,
      62,
      22
     ],
     "outlettype": [
      ""
     ],
     "fontsize": 9.0,
     "id": "obj-54"
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
      1062,
      165,
      56,
      48
     ],
     "varname": "heart_pulse",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.15
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "heart_pulse",
       "parameter_shortname": "Pulse",
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
     "maxclass": "newobj",
     "text": "s heart_pulse",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1062,
      225,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_beat",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20,
      285,
      95,
      22
     ],
     "outlettype": [
      ""
     ],
     "id": "obj-57"
    }
   },
   {
    "box": {
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      20,
      315,
      40,
      40
     ],
     "blinkcolor": [
      0.9,
      0.15,
      0.2,
      1.0
     ],
     "id": "obj-58"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r heart_bpm",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      110,
      285,
      88,
      22
     ],
     "outlettype": [
      ""
     ],
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "patching_rect": [
      110,
      315,
      60,
      30
     ],
     "fontsize": 20.0,
     "parameter_enable": 0,
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "BPM (this beat)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      175,
      320,
      120,
      20
     ],
     "fontsize": 12,
     "id": "obj-61"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "presets:",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      285,
      80,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-62"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s heart_preset",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      320,
      345,
      108,
      22
     ],
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "film",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      380,
      310,
      82,
      22
     ],
     "id": "obj-64"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "resting",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      468,
      310,
      82,
      22
     ],
     "id": "obj-65"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "sleep",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      556,
      310,
      82,
      22
     ],
     "id": "obj-66"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "exercise",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      644,
      310,
      82,
      22
     ],
     "id": "obj-67"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "panic",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      732,
      310,
      82,
      22
     ],
     "id": "obj-68"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "failing",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      820,
      310,
      82,
      22
     ],
     "id": "obj-69"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "stethoscope",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      908,
      310,
      82,
      22
     ],
     "id": "obj-70"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "<- click one to set all dials (edit them inside p presets)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      440,
      345,
      360,
      20
     ],
     "fontsize": 12,
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p pacemaker",
     "numinlets": 0,
     "numoutlets": 0,
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
       1000,
       720
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
         "text": "PACEMAKER: decides when each beat happens. No audio out. Sends bangs (heart_beat = lub, heart_s2 = dub) and info (heart_interval, heart_sys, heart_bpm, heart_prem, heart_breathc) to the other sections.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          940,
          34
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_rate",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          45,
          95,
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
         "text": "r heart_var",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          120,
          45,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_breath",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          220,
          45,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_irreg",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          330,
          45,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_breathc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          440,
          45,
          115,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_gap",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
          540,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "BREATH: internal breathing cycle (faster when the heart is faster), cross-faded with the real airflow from the Breathing patch (inhale - exhale) by Link. Output -1 (exhale) .. +1 (inhale).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          40,
          380,
          62
         ],
         "fontsize": 12,
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 0.18+0.2*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          110,
          128,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "cycle~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          145,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "receive~ breath_in",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          730,
          110,
          134,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "receive~ breath_ex",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          860,
          110,
          134,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          730,
          145,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          730,
          180,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "clip~ -1. 1.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          730,
          215,
          95,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-15"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_link",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          860,
          180,
          95,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-16"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          860,
          215,
          47,
          22
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          860,
          250,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-18"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 1.-$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          960,
          215,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-19"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          960,
          250,
          47,
          22
         ],
         "id": "obj-20"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          960,
          285,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
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
          600,
          320,
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
          730,
          320,
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
         "maxclass": "newobj",
         "text": "snapshot~ 50",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          360,
          95,
          22
         ],
         "outlettype": [
          "float"
         ],
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_breathc",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          395,
          115,
          22
         ],
         "id": "obj-25"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          110,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-26"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "delay 300",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          145,
          75,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-27"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "<- the beat loop: each beat schedules the next",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          90,
          145,
          280,
          20
         ],
         "fontsize": 12,
         "id": "obj-28"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b b b",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          180,
          75,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang"
         ],
         "id": "obj-29"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "IRREGULAR: with chance Irregular x 20% the next beat comes early (x0.58, and weaker), then the one after waits longer (x1.6) - an ectopic beat and its compensatory pause.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          330,
          140,
          260,
          76
         ],
         "fontsize": 12,
         "id": "obj-30"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          225,
          36,
          22
         ],
         "outlettype": [
          "float"
         ],
         "id": "obj-31"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "<- 1 = this beat is premature",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          370,
          225,
          200,
          20
         ],
         "fontsize": 12,
         "id": "obj-32"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_prem",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          470,
          260,
          95,
          22
         ],
         "id": "obj-33"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          260,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-34"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $i1 < $f2*200.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          295,
          141,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-35"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          330,
          330,
          49,
          22
         ],
         "outlettype": [
          "float",
          "float"
         ],
         "id": "obj-36"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*(1.-$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          365,
          128,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-37"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f2*1.6+(1.-$f2)*(1.-0.42*$f1)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          400,
          230,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-38"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "<- interval multiplier",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          485,
          400,
          150,
          20
         ],
         "fontsize": 12,
         "id": "obj-39"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          400,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-40"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $i1/500.-1.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          435,
          121,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-41"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 60000./((40.+160.*$f3)*(1.+0.12*$f4*$f5)*(1.+0.09*$f6*$f1))*$f2",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          20,
          470,
          470,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-42"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "interval ms = 60000 / BPM. BPM = 40-200 (Rate), sped up on the inhale (Breath = depth of this 'sinus arrhythmia'), plus random beat-to-beat wobble (Variability)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          500,
          470,
          34
         ],
         "fontsize": 12,
         "id": "obj-43"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "clip 200. 3000.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          540,
          115,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-44"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          20,
          575,
          62,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float"
         ],
         "id": "obj-45"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "<- schedules the next beat",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          605,
          170,
          20
         ],
         "fontsize": 12,
         "id": "obj-46"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_interval",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          610,
          121,
          22
         ],
         "id": "obj-47"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr int(60000./$f1+0.5)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          130,
          640,
          174,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-48"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_bpm",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          130,
          675,
          88,
          22
         ],
         "id": "obj-49"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (100.+0.25*$f1/$f2)*(0.45+0.75*$f3)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          575,
          230,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-50"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "clip 90. 450.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          610,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-51"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_sys",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          645,
          88,
          22
         ],
         "id": "obj-52"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "systole: lub -> dub gap, shorter at faster rates. Gap scales it x0.45-1.2 (0.73 = real, ~350 ms at 60 BPM)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          420,
          610,
          260,
          34
         ],
         "fontsize": 12,
         "id": "obj-53"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          20,
          215,
          49,
          22
         ],
         "outlettype": [
          "bang",
          "bang"
         ],
         "id": "obj-54"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_beat",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          250,
          95,
          22
         ],
         "id": "obj-55"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "delay",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          250,
          49,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-56"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s heart_s2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          285,
          82,
          22
         ],
         "id": "obj-57"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "lub now, dub after systole",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          250,
          130,
          34
         ],
         "fontsize": 12,
         "id": "obj-58"
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
          "obj-16",
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
          "obj-10",
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
          "obj-29",
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
          "obj-33",
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
          "obj-5",
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
          "obj-36",
          1
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
          "obj-31",
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
          "obj-31",
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
          "obj-38",
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
          "obj-38",
          1
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
          "obj-42",
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
          "obj-42",
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
          "obj-42",
          2
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
          "obj-42",
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
          "obj-42",
          4
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
          "obj-42",
          5
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
          "obj-27",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-45",
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
          "obj-45",
          2
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
          "obj-38",
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
          "obj-7",
          0
         ],
         "destination": [
          "obj-50",
          2
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
          "obj-29",
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
          "obj-54",
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
          "obj-51",
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
       }
      ]
     },
     "id": "obj-72"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Beat timing, breathing, irregular beats",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      414,
      220,
      34
     ],
     "fontsize": 12,
     "id": "obj-73"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p valves",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      250,
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
       1140,
       1040
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
         "text": "VALVES: the two hits of each beat. S1 'lub' (mitral + tricuspid valves closing) then, after Gap, S2 'dub' (aortic A2 + pulmonary P2, Split ms apart). S3 = Gallop, a soft low thud after the dub. Weight: 0 = higher, tighter, clicky (stethoscope); 1 = deeper, rounder, a little saturated (film score). Each hit goes to a free voice of poly~ heart_valve.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          1080,
          48
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_force",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          101,
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
         "text": "r heart_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          138,
          60,
          95,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_prem",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          256,
          60,
          95,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_weight",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          374,
          60,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_split",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          492,
          60,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_gallop",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          610,
          60,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_breathc",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          728,
          60,
          115,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_interval",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          846,
          60,
          121,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_sys",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          964,
          60,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "poly~ heart_valve 8",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          935,
          140,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "args: f0 ratio dur amp thud punch thud_ratio drive",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          750,
          935,
          360,
          20
         ],
         "fontsize": 12,
         "id": "obj-12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "prepend note",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          600,
          900,
          95,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          975,
          30,
          30
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_beat",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          100,
          95,
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
         "maxclass": "comment",
         "text": "S1 'lub': the main hit. ~70 Hz clinical, ~50 Hz at full Weight. Length capped at 90% of the gap",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          130,
          420,
          34
         ],
         "fontsize": 12,
         "id": "obj-16"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          20,
          170,
          101,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 55. 0.85 200. 0.7 0.5 3. 6. 1.",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          20,
          420,
          260,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-18"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          205,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-19"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 55.*exp((0.5-$f2)*0.8)*(1.+0.25*$f3)*(1.3-0.4*$f4)*(0.97+$i1/16000.)",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          115,
          205,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-20"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          240,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-21"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr min((150.+100.*$f2)*(0.8+0.4*$f3)*(0.9+$i1/5000.), 0.9*$f4)",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          125,
          240,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-22"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          40,
          275,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-23"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (0.55+0.45*$f2)*(1.-0.4*$f3)*(0.9+$i1/5000.)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          135,
          275,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          50,
          310,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-25"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (0.25+0.5*$f2)*(1.-0.5*$f3)+$i1*0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          145,
          310,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-26"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          60,
          345,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-27"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 2.+1.5*$f2+$i1*0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          155,
          345,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-28"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          70,
          380,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-29"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 1.+0.6*$f2*$f3+$i1*0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          165,
          380,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-30"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_s2",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          100,
          82,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-31"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b b",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          600,
          130,
          62,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang"
         ],
         "id": "obj-32"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "S2 'dub' A2 (aortic): a little higher and shorter than the lub",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          160,
          420,
          34
         ],
         "fontsize": 12,
         "id": "obj-33"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b b b b b",
         "numinlets": 1,
         "numoutlets": 6,
         "patching_rect": [
          600,
          200,
          101,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang",
          "bang",
          "bang",
          "bang"
         ],
         "id": "obj-34"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 66. 0.85 150. 0.6 0.5 3. 6. 1.",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          600,
          450,
          260,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-35"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          235,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-36"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 66.*exp((0.5-$f2)*0.8)*(1.+0.25*$f3)*(1.3-0.4*$f4)*(0.97+$i1/16000.)",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          695,
          235,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-37"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          270,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-38"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (110.+70.*$f2)*(0.8+0.4*$f3)*(0.9+$i1/5000.)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          705,
          270,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-39"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          305,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-40"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 0.8*(0.55+0.45*$f2)*(1.-0.6*$f3)*(0.9+$i1/5000.)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          715,
          305,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-41"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          630,
          340,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-42"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (0.3+0.5*$f2)*(1.-0.5*$f3)+$i1*0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          725,
          340,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-43"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          375,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-44"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 2.+1.5*$f2+$i1*0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          735,
          375,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-45"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          650,
          410,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-46"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 1.+0.6*$f2*$f3+$i1*0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          745,
          410,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-47"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 1.+40.*$f2*(0.65+0.35*$f1)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          490,
          230,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-48"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "split 1-41 ms, widest on the inhale",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          840,
          490,
          250,
          20
         ],
         "fontsize": 12,
         "id": "obj-49"
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
          525,
          49,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-50"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "S2 'dub' P2 (pulmonary): softer echo of A2, Split ms later",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          600,
          560,
          420,
          34
         ],
         "fontsize": 12,
         "id": "obj-51"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b b",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          600,
          600,
          62,
          22
         ],
         "outlettype": [
          "bang",
          "bang",
          "bang"
         ],
         "id": "obj-52"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 74. 0.85 120. 0.3 0.4 2.5 6. 1.",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          600,
          745,
          260,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-53"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          635,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-54"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 74.*exp((0.5-$f2)*0.8)*(1.+0.25*$f3)*(1.3-0.4*$f4)*(0.97+$i1/16000.)",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          695,
          635,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-55"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          610,
          670,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-56"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (90.+50.*$f2)*(0.8+0.4*$f3)*(0.9+$i1/5000.)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          705,
          670,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-57"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          620,
          705,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-58"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 0.35*(0.55+0.45*$f2)*(1.-0.6*$f3)*(0.9+$i1/5000.)",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          715,
          705,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-59"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*0.14",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          500,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-60"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "clip 90. 180.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          535,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-61"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "delay 140",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          570,
          75,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-62"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "gate 1",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          605,
          55,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-63"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "> 0.01",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          570,
          55,
          22
         ],
         "outlettype": [
          "int"
         ],
         "id": "obj-64"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "S3 ~14% of a beat after the dub; gate closed when Gallop = 0",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          220,
          570,
          300,
          34
         ],
         "fontsize": 12,
         "id": "obj-65"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "S3 gallop: very low, soft thud after the dub",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          640,
          420,
          34
         ],
         "fontsize": 12,
         "id": "obj-66"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "patching_rect": [
          20,
          680,
          49,
          22
         ],
         "outlettype": [
          "bang",
          "bang"
         ],
         "id": "obj-67"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 38. 0.9 160. 0. 0.2 1.5 5. 1.",
         "numinlets": 8,
         "numoutlets": 1,
         "patching_rect": [
          20,
          790,
          260,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-68"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          715,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-69"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 38.*exp((0.5-$f2)*0.8)*(0.97+$i1/16000.)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          115,
          715,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-70"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          30,
          750,
          80,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-71"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 0.7*$f2*(0.9+$i1/5000.)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          125,
          750,
          420,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-72"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "obj-13",
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
          "obj-17",
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
          "obj-20",
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
          "obj-20",
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
          "obj-20",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-17",
          1
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
          "obj-18",
          2
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
          "obj-22",
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
          "obj-22",
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
          "obj-22",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-17",
          2
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
          "obj-18",
          3
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
          "obj-24",
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
          "obj-24",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-17",
          3
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
          "obj-26",
          0
         ],
         "destination": [
          "obj-18",
          4
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
          "obj-26",
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
          "obj-26",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-17",
          4
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
          "obj-18",
          5
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-17",
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
          "obj-18",
          7
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
          "obj-30",
          2
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
          "obj-13",
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
          "obj-35",
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
          "obj-2",
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
          "obj-5",
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
          "obj-34",
          1
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
          "obj-35",
          2
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
          "obj-39",
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
          "obj-39",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-34",
          2
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
          "obj-35",
          3
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
          "obj-41",
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
          "obj-41",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-34",
          3
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
          "obj-35",
          4
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
          "obj-43",
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
          "obj-43",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-34",
          4
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
          "obj-35",
          5
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
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-34",
          5
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
          "obj-47",
          0
         ],
         "destination": [
          "obj-35",
          7
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
          "obj-47",
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
          "obj-47",
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
          "obj-13",
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
          "obj-48",
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
          "obj-48",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-32",
          1
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
          "obj-53",
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
          "obj-55",
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
          "obj-55",
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
          "obj-55",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-52",
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
          "obj-53",
          2
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
          "obj-57",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-52",
          2
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
          "obj-53",
          3
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
          "obj-59",
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
          "obj-59",
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
          "obj-32",
          2
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
          "obj-61",
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
          "obj-7",
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
          "obj-64",
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
          "obj-63",
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
          "obj-70",
          0
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
          "obj-68",
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
          "obj-70",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-67",
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
          "obj-72",
          0
         ],
         "destination": [
          "obj-68",
          3
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
          "obj-72",
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
          "obj-13",
          0
         ]
        }
       }
      ]
     },
     "outlettype": [
      "signal"
     ],
     "id": "obj-74"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Lub / dub / gallop (poly~ heart_valve)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250,
      414,
      220,
      34
     ],
     "fontsize": 12,
     "id": "obj-75"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p murmur",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      480,
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
         "maxclass": "comment",
         "text": "MURMUR: turbulent blood flow through a narrowed valve - a whoosh that swells and fades between lub and dub (crescendo-decrescendo over systole). Tone moves the noise band from a low rumble to a high hiss.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          760,
          48
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_beat",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          95,
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
         "text": "delay 30",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          95,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_sys",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          160,
          60,
          88,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*0.42",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          160,
          95,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          130,
          36,
          22
         ],
         "outlettype": [
          "float"
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "1 $1 0 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          165,
          73,
          22
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          200,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          235,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "swell up, then down, across ~85% of systole",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          90,
          165,
          280,
          20
         ],
         "fontsize": 12,
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_mtone",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          300,
          60,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 150.+900.*$f1*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          95,
          161,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-12"
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
          165,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-13"
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
          200,
          100,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 150. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          420,
          200,
          100,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-15"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*0.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          130,
          95,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-16"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          235,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "band = low-pass(f) - low-pass(f/2), f = 150-1050 Hz (Tone)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          530,
          200,
          240,
          34
         ],
         "fontsize": 12,
         "id": "obj-18"
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
          280,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-19"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_murmur",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          480,
          60,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-20"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.2",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          480,
          95,
          121,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-21"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          480,
          130,
          47,
          22
         ],
         "id": "obj-22"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          480,
          165,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-23"
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
          320,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          360,
          30,
          30
         ],
         "id": "obj-25"
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
          "obj-8",
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
          "obj-13",
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
          "obj-12",
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
          "obj-15",
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
          "obj-19",
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
          "obj-19",
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
       }
      ]
     },
     "outlettype": [
      "signal"
     ],
     "id": "obj-76"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Systolic whoosh",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      480,
      414,
      220,
      34
     ],
     "fontsize": 12,
     "id": "obj-77"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p pulse",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      710,
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
         "maxclass": "comment",
         "text": "PULSE: the whoosh of blood you hear in your ears (or through a pillow). Low noise that surges and opens up shortly after each lub (pulse wave arriving), then ebbs away. L and R use separate noise so it feels inside the head.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          760,
          48
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_beat",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          95,
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
         "text": "delay 90",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          95,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "pulse wave travel time",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          90,
          95,
          150,
          20
         ],
         "fontsize": 12,
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_interval",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          240,
          60,
          121,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*0.65",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          240,
          95,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          130,
          36,
          22
         ],
         "outlettype": [
          "float"
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "1 50, 0 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          165,
          80,
          22
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          200,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 550.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          240,
          62,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 60.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          275,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "filter opens 60 -> 610 Hz with each surge",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          90,
          260,
          260,
          20
         ],
         "fontsize": 12,
         "id": "obj-12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 0.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          240,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_pulse",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          520,
          60,
          101,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*$f1*1.5",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          520,
          95,
          121,
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
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          520,
          130,
          47,
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
          520,
          165,
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
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          320,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-18"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 100. 0.3",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          355,
          110,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-19"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 100. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          390,
          110,
          22
         ],
         "outlettype": [
          "signal"
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
          20,
          425,
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
          20,
          460,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          500,
          30,
          30
         ],
         "id": "obj-23"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          320,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 100. 0.3",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          355,
          110,
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
         "text": "lores~ 100. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          390,
          110,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          425,
          36,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          460,
          36,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          500,
          30,
          30
         ],
         "id": "obj-29"
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
          "obj-9",
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
          "obj-11",
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
          "obj-11",
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
          "obj-13",
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
          "obj-17",
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
          "obj-11",
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
          "obj-11",
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
          "obj-13",
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
          "obj-17",
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
       }
      ]
     },
     "outlettype": [
      "signal",
      "signal"
     ],
     "id": "obj-78"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Blood rushing in the ears",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      710,
      414,
      220,
      34
     ],
     "fontsize": 12,
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p presets",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      940,
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
       900,
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
         "maxclass": "comment",
         "text": "PRESETS: each message sets the dials (via r heart_set_*). Edit the numbers to taste.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          700,
          20
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_preset",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          40,
          108,
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
         "text": "route film resting sleep exercise panic failing stethoscope",
         "numinlets": 2,
         "numoutlets": 8,
         "patching_rect": [
          20,
          75,
          420,
          22
         ],
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.22; heart_set_var 0.15; heart_set_breath 0.3; heart_set_irreg 0.0; heart_set_force 0.75; heart_set_size 0.6; heart_set_split 0.05; heart_set_muffle 0.55; heart_set_murmur 0.0; heart_set_mtone 0.4; heart_set_gallop 0.0; heart_set_pulse 0.15; heart_set_weight 1.0; heart_set_gap 0.35",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          120,
          130,
          22
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.19; heart_set_var 0.3; heart_set_breath 0.5; heart_set_irreg 0.0; heart_set_force 0.55; heart_set_size 0.5; heart_set_split 0.15; heart_set_muffle 0.45; heart_set_murmur 0.0; heart_set_mtone 0.4; heart_set_gallop 0.0; heart_set_pulse 0.1; heart_set_weight 0.7; heart_set_gap 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          160,
          120,
          130,
          22
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.1; heart_set_var 0.45; heart_set_breath 0.8; heart_set_irreg 0.0; heart_set_force 0.4; heart_set_size 0.6; heart_set_split 0.2; heart_set_muffle 0.65; heart_set_murmur 0.0; heart_set_mtone 0.4; heart_set_gallop 0.0; heart_set_pulse 0.1; heart_set_weight 0.85; heart_set_gap 0.55",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          300,
          120,
          130,
          22
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.5; heart_set_var 0.08; heart_set_breath 0.2; heart_set_irreg 0.0; heart_set_force 0.85; heart_set_size 0.5; heart_set_split 0.05; heart_set_muffle 0.45; heart_set_murmur 0.0; heart_set_mtone 0.5; heart_set_gallop 0.0; heart_set_pulse 0.2; heart_set_weight 0.75; heart_set_gap 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          440,
          120,
          130,
          22
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.75; heart_set_var 0.15; heart_set_breath 0.1; heart_set_irreg 0.05; heart_set_force 0.95; heart_set_size 0.45; heart_set_split 0.05; heart_set_muffle 0.4; heart_set_murmur 0.0; heart_set_mtone 0.6; heart_set_gallop 0.0; heart_set_pulse 0.25; heart_set_weight 0.9; heart_set_gap 0.35",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          580,
          120,
          130,
          22
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.38; heart_set_var 0.6; heart_set_breath 0.2; heart_set_irreg 0.45; heart_set_force 0.4; heart_set_size 0.6; heart_set_split 0.35; heart_set_muffle 0.5; heart_set_murmur 0.35; heart_set_mtone 0.35; heart_set_gallop 0.5; heart_set_pulse 0.1; heart_set_weight 0.7; heart_set_gap 0.6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          720,
          120,
          130,
          22
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "; heart_set_rate 0.2; heart_set_var 0.3; heart_set_breath 0.5; heart_set_irreg 0.0; heart_set_force 0.55; heart_set_size 0.5; heart_set_split 0.3; heart_set_muffle 0.15; heart_set_murmur 0.0; heart_set_mtone 0.4; heart_set_gallop 0.0; heart_set_pulse 0.0; heart_set_weight 0.0; heart_set_gap 0.73",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          860,
          120,
          130,
          22
         ],
         "id": "obj-10"
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
          1
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
          2
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
          3
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
          "obj-3",
          4
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
          5
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
          "obj-3",
          6
         ],
         "destination": [
          "obj-10",
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
     "maxclass": "comment",
     "text": "Preset dial settings",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      940,
      414,
      220,
      34
     ],
     "fontsize": 12,
     "id": "obj-81"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p master",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20,
      480,
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
       700,
       420
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
         "text": "MASTER: Muffle = low-pass (as if through the chest wall), Volume, then tanh~ soft clip (which also adds harmonics so the thump reads on small speakers).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          640,
          34
         ],
         "fontsize": 12,
         "id": "obj-1"
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
          20,
          45,
          30,
          30
         ],
         "id": "obj-2"
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
          200,
          45,
          30,
          30
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_muffle",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          380,
          45,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 150.+6000.*(1.-$f1)*(1.-$f1)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          80,
          230,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "cutoff 6150 -> 150 Hz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          110,
          200,
          20
         ],
         "fontsize": 12,
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r heart_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          380,
          150,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1*$f1*2.2",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          185,
          121,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          380,
          220,
          47,
          22
         ],
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          380,
          255,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 2000. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          120,
          120,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          290,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          325,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          365,
          30,
          30
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 2000. 0.2",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          120,
          120,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-15"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          290,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-16"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          325,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          365,
          30,
          30
         ],
         "id": "obj-18"
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
          "obj-5",
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
          "obj-2",
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
          "obj-10",
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
          "obj-3",
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
          "obj-5",
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
          "obj-18",
          0
         ]
        }
       }
      ]
     },
     "outlettype": [
      "signal",
      "signal"
     ],
     "id": "obj-82"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Muffle -> Volume -> soft clip",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      480,
      260,
      20
     ],
     "fontsize": 12,
     "id": "obj-83"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "every layer sums into master (signals into one inlet are added)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      455,
      420,
      20
     ],
     "fontsize": 12,
     "id": "obj-84"
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
      520,
      80,
      13
     ],
     "id": "obj-85"
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
      538,
      80,
      13
     ],
     "id": "obj-86"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      120,
      520,
      45,
      45
     ],
     "id": "obj-87"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "<- click to start audio",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      170,
      532,
      160,
      20
     ],
     "fontsize": 12,
     "id": "obj-88"
    }
   },
   {
    "box": {
     "maxclass": "scope~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      340,
      515,
      420,
      110
     ],
     "calccount": 512,
     "bufsize": 128,
     "id": "obj-89"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "output waveform (~1.5 s)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      770,
      560,
      200,
      20
     ],
     "fontsize": 12,
     "id": "obj-90"
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
      "obj-63",
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
      "obj-63",
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
      "obj-63",
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
      "obj-63",
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
      "obj-70",
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
      "obj-74",
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
      "obj-74",
      0
     ],
     "destination": [
      "obj-82",
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
      "obj-82",
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
      "obj-82",
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
      "obj-82",
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
      "obj-82",
      1
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
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      1
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
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      1
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
      "obj-82",
      0
     ],
     "destination": [
      "obj-89",
      0
     ]
    }
   }
  ]
 }
}