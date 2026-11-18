{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 8,
   "minor": 1,
   "revision": 2,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   40,
   60,
   1180,
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
     "text": "Procedural Sea",
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
     "text": "Waves lapping on a beach. Beach blends sand (fizz as the water soaks in) into pebbles (rattling backwash). Each wave lasts the Wave length; with Sync on and the transport playing, waves lock to the song position and break on the bar (in Live: use M4L/Procedural Sea.amxd). Every dial is 0-1. No extra files needed.",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      44,
      1100,
      48
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
      100,
      412,
      140
     ],
     "bgcolor": [
      0.2,
      0.45,
      0.65,
      0.14
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
      103,
      400,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Global",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      245,
      100,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      6,
      2,
      200,
      16
     ],
     "fontsize": 10.0,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "live.menu",
     "varname": "sea_wave",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      20,
      135,
      70,
      15
     ],
     "presentation": 1,
     "presentation_rect": [
      6,
      116,
      70,
      15
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Wave Length",
       "parameter_shortname": "Wave",
       "parameter_type": 2,
       "parameter_enum": [
        "1/2 bar",
        "1 bar",
        "2 bars",
        "4 bars",
        "8 bars"
       ],
       "parameter_mmin": 0.0,
       "parameter_mmax": 4.0,
       "parameter_initial": [
        2.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 10
      }
     },
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_wave",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Wave length",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      155,
      80,
      20
     ],
     "fontsize": 10,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "live.text",
     "varname": "sea_sync",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "text": "Free",
     "texton": "Sync",
     "patching_rect": [
      92,
      135,
      60,
      18
     ],
     "presentation": 1,
     "presentation_rect": [
      84,
      114,
      56,
      18
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "Sync",
       "parameter_shortname": "Sync",
       "parameter_type": 2,
       "parameter_enum": [
        "Off",
        "On"
       ],
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 10
      }
     },
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_sync",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      92,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "lock to transport",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      92,
      155,
      70,
      30
     ],
     "fontsize": 10,
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
      160,
      140,
      56,
      48
     ],
     "varname": "sea_volume",
     "presentation": 1,
     "presentation_rect": [
      6,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Volume",
       "parameter_shortname": "Volume",
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
     "text": "s sea_volume",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      160,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-13"
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
      226,
      140,
      56,
      48
     ],
     "varname": "sea_size",
     "presentation": 1,
     "presentation_rect": [
      56,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Wave Size",
       "parameter_shortname": "Size",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_size",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      226,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-15"
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
      292,
      140,
      56,
      48
     ],
     "varname": "sea_var",
     "presentation": 1,
     "presentation_rect": [
      106,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Variation",
       "parameter_shortname": "Variation",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_var",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      292,
      210,
      62,
      22
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
      358,
      140,
      56,
      48
     ],
     "varname": "sea_width",
     "presentation": 1,
     "presentation_rect": [
      156,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Width",
       "parameter_shortname": "Width",
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
     "text": "s sea_width",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      358,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      444,
      100,
      206,
      140
     ],
     "bgcolor": [
      0.2,
      0.45,
      0.65,
      0.14
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "BEACH  sand <-> pebble",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      103,
      194,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Beach",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      245,
      100,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      220,
      2,
      150,
      16
     ],
     "fontsize": 10.0,
     "id": "obj-22"
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
      450,
      140,
      56,
      48
     ],
     "varname": "sea_beach",
     "presentation": 1,
     "presentation_rect": [
      220,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Beach",
       "parameter_shortname": "Beach",
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
     "maxclass": "newobj",
     "text": "s sea_beach",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      450,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-24"
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
      516,
      140,
      56,
      48
     ],
     "varname": "sea_stones",
     "presentation": 1,
     "presentation_rect": [
      270,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Stones",
       "parameter_shortname": "Stones",
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
     "maxclass": "newobj",
     "text": "s sea_stones",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      516,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-26"
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
      582,
      140,
      56,
      48
     ],
     "varname": "sea_drag",
     "presentation": 1,
     "presentation_rect": [
      320,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.6
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Drag",
       "parameter_shortname": "Drag",
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
     "maxclass": "newobj",
     "text": "s sea_drag",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      582,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-28"
    }
   },
   {
    "box": {
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      668,
      100,
      206,
      140
     ],
     "bgcolor": [
      0.2,
      0.45,
      0.65,
      0.14
     ],
     "rounded": 6,
     "background": 1,
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "SURF",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      674,
      103,
      194,
      20
     ],
     "fontsize": 12,
     "fontface": 1,
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Surf",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      674,
      245,
      100,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      384,
      2,
      150,
      16
     ],
     "fontsize": 10.0,
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
      674,
      140,
      56,
      48
     ],
     "varname": "sea_splash",
     "presentation": 1,
     "presentation_rect": [
      384,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Splash",
       "parameter_shortname": "Splash",
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
     "text": "s sea_splash",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      674,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-33"
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
      740,
      140,
      56,
      48
     ],
     "varname": "sea_bright",
     "presentation": 1,
     "presentation_rect": [
      434,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Bright",
       "parameter_shortname": "Bright",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_bright",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      740,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-35"
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
      806,
      140,
      56,
      48
     ],
     "varname": "sea_bed",
     "presentation": 1,
     "presentation_rect": [
      484,
      36,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.35
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Bed",
       "parameter_shortname": "Bed",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_bed",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      806,
      210,
      62,
      22
     ],
     "fontsize": 9.0,
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "wave position (0 = start of wave, breaks at 0.3)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      255,
      320,
      20
     ],
     "fontsize": 12,
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r sea_phase",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20,
      280,
      88,
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
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      310,
      300,
      20
     ],
     "size": 1.0,
     "floatoutput": 1,
     "presentation": 1,
     "presentation_rect": [
      156,
      118,
      200,
      14
     ],
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Sync",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700,
      337,
      160,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      6,
      82,
      140,
      16
     ],
     "fontsize": 10.0,
     "id": "obj-41"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Wave length",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700,
      353,
      160,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      6,
      98,
      70,
      16
     ],
     "fontsize": 10.0,
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "wave position (breaks at 0.3)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700,
      353,
      160,
      16
     ],
     "presentation": 1,
     "presentation_rect": [
      156,
      98,
      200,
      16
     ],
     "fontsize": 10.0,
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "dspstate~",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      380,
      280,
      75,
      22
     ],
     "outlettype": [
      "int",
      "float",
      "int",
      "int"
     ],
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_sr",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      380,
      315,
      68,
      22
     ],
     "id": "obj-45"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      470,
      280,
      68,
      22
     ],
     "outlettype": [
      "bang"
     ],
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p tide",
     "numinlets": 0,
     "numoutlets": 0,
     "patching_rect": [
      20,
      360,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       60,
       60,
       1100,
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
         "maxclass": "comment",
         "text": "TIDE: the wave clock. Every 10 ms it reads the transport. If Sync is on AND the transport is playing (Live's, inside Max for Live), the wave phase is locked to the song position: one wave every Wave length, starting on the bar. Otherwise it free-runs at the same tempo. The phase (0-1) drives three envelopes: wash (the wave breaking and rushing up), fizz (water soaking into sand) and backwash (water draining back, dragging pebbles).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          1040,
          62
         ],
         "fontsize": 12,
         "id": "obj-1"
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
          75,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-2"
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
          20,
          105,
          30,
          22
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "metro 10",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          135,
          68,
          22
         ],
         "outlettype": [
          "bang"
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "transport",
         "numinlets": 2,
         "numoutlets": 9,
         "patching_rect": [
          20,
          170,
          200,
          22
         ],
         "outlettype": [
          "int",
          "int",
          "float",
          "float",
          "float",
          "",
          "int",
          "float",
          ""
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "transport outlets: resolution, tempo, state (playing), ticks (song position)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          230,
          170,
          420,
          20
         ],
         "fontsize": 12,
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_wave",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          680,
          75,
          82,
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
         "text": "expr pow(2.\\,$f1)*2.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          680,
          105,
          148,
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
         "maxclass": "comment",
         "text": "Wave menu 0-4 -> 2, 4, 8, 16, 32 beats (1/2 to 8 bars in 4/4)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          820,
          105,
          260,
          34
         ],
         "fontsize": 12,
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_sync",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          560,
          75,
          82,
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
         "text": "expr $f4*$f5*($f1/max($f2\\,1.)/max($f6\\,1.)-int($f1/max($f2\\,1.)/max($f6\\,1.)))+(1.-$f4*$f5)*($f7+$f3/(max($f6\\,1.)*6000.)-int($f7+$f3/(max($f6\\,1.)*6000.)))",
         "numinlets": 7,
         "numoutlets": 1,
         "patching_rect": [
          20,
          230,
          1000,
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
         "maxclass": "comment",
         "text": "phase = synced: fract(ticks / resolution / wave_beats)   free: fract(last + 10 ms worth of the wave at this tempo)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          258,
          700,
          20
         ],
         "fontsize": 12,
         "id": "obj-12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          290,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s sea_phase",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140,
          325,
          88,
          22
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1<$f2-0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          325,
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
         "maxclass": "comment",
         "text": "<- phase jumped back = a new wave",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          430,
          325,
          220,
          20
         ],
         "fontsize": 12,
         "id": "obj-16"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "sel 1",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          300,
          360,
          49,
          22
         ],
         "outlettype": [
          "bang",
          ""
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          400,
          360,
          68,
          22
         ],
         "outlettype": [
          "bang"
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
          300,
          395,
          88,
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
         "text": "r sea_size",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
          395,
          82,
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
         "text": "r sea_var",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          520,
          395,
          75,
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
         "text": "expr (0.2+0.8*$f2)*(1.-0.85*$f3*pow($i1/1000.\\,1.5))",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          430,
          320,
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
         "maxclass": "comment",
         "text": "this wave's size: Size, randomly smaller by up to Variation",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          630,
          430,
          330,
          20
         ],
         "fontsize": 12,
         "id": "obj-23"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s sea_wsize",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          465,
          88,
          22
         ],
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f2*(($f1<0.3)*0.4*pow($f1/0.3\\,2.)+($f1>=0.3)*pow(max(0.\\,1.-($f1-0.3)/0.45)\\,1.5))",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          510,
          340,
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
         "text": "s sea_wash",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          545,
          82,
          22
         ],
         "id": "obj-26"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "wash: builds, then breaks at 0.3, rushes up and fades",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          570,
          340,
          20
         ],
         "fontsize": 12,
         "id": "obj-27"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f2*pow(sin(3.14159*min(1.\\,max(0.\\,($f1-0.35)/0.6)))\\,2.)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          510,
          340,
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
         "text": "s sea_fizz",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          545,
          82,
          22
         ],
         "id": "obj-29"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "fizz: peaks as the water soaks in",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          570,
          340,
          20
         ],
         "fontsize": 12,
         "id": "obj-30"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f2*pow(sin(3.14159*min(1.\\,max(0.\\,($f1-0.5)/0.48)))\\,1.5)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          510,
          340,
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
         "text": "s sea_back",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          545,
          82,
          22
         ],
         "id": "obj-32"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "backwash: 0.5-0.98, peaks ~0.75",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          740,
          570,
          340,
          20
         ],
         "fontsize": 12,
         "id": "obj-33"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1>=0.3",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          470,
          101,
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
         "text": "change",
         "numinlets": 1,
         "numoutlets": 3,
         "patching_rect": [
          130,
          470,
          55,
          22
         ],
         "outlettype": [
          "",
          "int",
          "int"
         ],
         "id": "obj-35"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "sel 1",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          200,
          470,
          49,
          22
         ],
         "outlettype": [
          "bang",
          ""
         ],
         "id": "obj-36"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "s sea_break",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250,
          470,
          88,
          22
         ],
         "id": "obj-37"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700,
          5,
          420,
          33
         ],
         "text": "LOOSENESS: each new wave starts late by a random 0-35% x Looseness of a wave, and (free-run) its length varies by up to +-30% x Looseness.",
         "id": "obj-loose4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_loose",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700,
          40,
          89,
          22
         ],
         "id": "obj-loose5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t b b",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "bang"
         ],
         "patching_rect": [
          820,
          40,
          47,
          22
         ],
         "id": "obj-loose6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          820,
          70,
          89,
          22
         ],
         "id": "obj-loose7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          940,
          70,
          89,
          22
         ],
         "id": "obj-loose8"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr $f1/1000.*$f2*0.35",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          820,
          100,
          150,
          22
         ],
         "id": "obj-loose9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 1.+($f1/1000.-0.5)*$f2*0.6",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          980,
          130,
          190,
          22
         ],
         "id": "obj-loose10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "* 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          980,
          160,
          40,
          22
         ],
         "id": "obj-loose11"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          1030,
          160,
          220,
          20
         ],
         "text": "<- tempo x rate (free-run only)",
         "id": "obj-loose12"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr ($f1-$f2)/(1.-$f2)",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          820,
          200,
          150,
          22
         ],
         "id": "obj-loose13"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "clip 0. 1.",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          820,
          230,
          82,
          22
         ],
         "id": "obj-loose14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f f",
         "numinlets": 1,
         "numoutlets": 5,
         "outlettype": [
          "float",
          "float",
          "float",
          "float",
          "float"
         ],
         "patching_rect": [
          820,
          260,
          150,
          22
         ],
         "id": "obj-loose15"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          980,
          200,
          300,
          33
         ],
         "text": "<- this wave's phase: held at 0 until its late start, then runs to 1 by the end of the cycle",
         "id": "obj-loose16"
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
          "obj-5",
          7
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
          3
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
          "obj-5",
          6
         ],
         "destination": [
          "obj-11",
          3
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
          4
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
          5
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
          "obj-13",
          3
         ],
         "destination": [
          "obj-11",
          6
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
          "obj-22",
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
          "obj-22",
          2
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
          "obj-22",
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
          "obj-22",
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
          "obj-22",
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
          "obj-17",
          0
         ],
         "destination": [
          "obj-loose6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose6",
          0
         ],
         "destination": [
          "obj-loose7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose6",
          1
         ],
         "destination": [
          "obj-loose8",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose7",
          0
         ],
         "destination": [
          "obj-loose9",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose5",
          0
         ],
         "destination": [
          "obj-loose9",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose8",
          0
         ],
         "destination": [
          "obj-loose10",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose5",
          0
         ],
         "destination": [
          "obj-loose10",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-5",
          4
         ],
         "destination": [
          "obj-loose11",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose10",
          0
         ],
         "destination": [
          "obj-loose11",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose11",
          0
         ],
         "destination": [
          "obj-11",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose9",
          0
         ],
         "destination": [
          "obj-loose13",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose13",
          0
         ],
         "destination": [
          "obj-loose14",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose14",
          0
         ],
         "destination": [
          "obj-loose15",
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
          "obj-loose13",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose15",
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
          "obj-loose15",
          1
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
          "obj-loose15",
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
          "obj-loose15",
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
          "obj-loose15",
          4
         ],
         "destination": [
          "obj-34",
          0
         ]
        }
       }
      ]
     },
     "id": "obj-47"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "wave clock + envelopes (synced to transport)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-48"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p wash",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      210,
      360,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       60,
       60,
       760,
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
         "text": "WASH: the wave breaking and rushing up the beach. Pink noise whose low-pass filter opens with the wave (Bright sets how far) and whose level follows it. L and R use separate noise.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          700,
          48
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_wash",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          82,
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
         "maxclass": "message",
         "text": "$1 10",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          90,
          47,
          22
         ],
         "id": "obj-3"
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
          120,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_bright",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          60,
          95,
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
         "text": "expr 1200.+7000.*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          90,
          148,
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
         "text": "*~ 3000.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          160,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 250.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          195,
          62,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-8"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "cutoff = 250 + wash x (1200..8200)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          290,
          195,
          260,
          20
         ],
         "fontsize": 12,
         "id": "obj-9"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          240,
          49,
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
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          275,
          110,
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
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          310,
          110,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          345,
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
         "text": "*~ 2.8",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          380,
          75,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          420,
          30,
          30
         ],
         "id": "obj-15"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          240,
          49,
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
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          275,
          110,
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
         "maxclass": "newobj",
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          300,
          310,
          110,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          345,
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
         "text": "*~ 2.8",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          380,
          75,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          420,
          30,
          30
         ],
         "id": "obj-21"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "rand~ 9.",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          200,
          68,
          22
         ],
         "id": "obj-loose17"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          230,
          40,
          22
         ],
         "id": "obj-loose18"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.9",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          260,
          54,
          22
         ],
         "id": "obj-loose19"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 0.55",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          290,
          61,
          22
         ],
         "id": "obj-loose20"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          320,
          40,
          22
         ],
         "id": "obj-loose21"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "rand~ 11.",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          580,
          200,
          75,
          22
         ],
         "id": "obj-loose22"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          580,
          230,
          40,
          22
         ],
         "id": "obj-loose23"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.9",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          580,
          260,
          54,
          22
         ],
         "id": "obj-loose24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 0.55",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          580,
          290,
          61,
          22
         ],
         "id": "obj-loose25"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          580,
          320,
          40,
          22
         ],
         "id": "obj-loose26"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          400,
          170,
          360,
          20
         ],
         "text": "turbulence: a random flutter so the rush gurgles",
         "id": "obj-loose27"
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
          "obj-8",
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
          "obj-4",
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
          "obj-8",
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
          "obj-8",
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
          "obj-4",
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
          "obj-loose17",
          0
         ],
         "destination": [
          "obj-loose18",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose17",
          0
         ],
         "destination": [
          "obj-loose18",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose18",
          0
         ],
         "destination": [
          "obj-loose19",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose19",
          0
         ],
         "destination": [
          "obj-loose20",
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
          "obj-loose21",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose20",
          0
         ],
         "destination": [
          "obj-loose21",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose21",
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
          "obj-loose22",
          0
         ],
         "destination": [
          "obj-loose23",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose22",
          0
         ],
         "destination": [
          "obj-loose23",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose23",
          0
         ],
         "destination": [
          "obj-loose24",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose24",
          0
         ],
         "destination": [
          "obj-loose25",
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
          "obj-loose26",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose25",
          0
         ],
         "destination": [
          "obj-loose26",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose26",
          0
         ],
         "destination": [
          "obj-17",
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
     "id": "obj-49"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "breaking / rushing water",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      210,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p splash",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      400,
      360,
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
       1300,
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
         "text": "SPLASH: the wave breaking. Each side gets its own crash, started up to 0.25 s apart so the break peels along the beach across the stereo field. Crash = pink noise with a turbulent flutter, lowpassed by a filter that closes as it decays (bright crack -> dull roar). Plus a low whump (stronger on pebble beaches, where waves plunge) and foam: bubbles plinking as the white water fizzes. Sand waves spill (softer attack, longer); pebble waves plunge (sharp, shorter).",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          900,
          62
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-2",
         "maxclass": "newobj",
         "text": "r sea_break",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
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
         "id": "obj-3",
         "maxclass": "newobj",
         "text": "r sea_beach",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
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
         "id": "obj-4",
         "maxclass": "newobj",
         "text": "t b b b b",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          110,
          120,
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
         "id": "obj-5",
         "maxclass": "newobj",
         "text": "random 1000",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          140,
          89,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "text": "expr (1300.-650.*$f2)*(0.75+$f1/2000.)",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          170,
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
         "id": "obj-7",
         "maxclass": "newobj",
         "text": "expr 40.+160.*(1.-$f1)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          400,
          110,
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
         "id": "obj-8",
         "maxclass": "newobj",
         "text": "pack 0. 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          140,
          200,
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
         "maxclass": "comment",
         "text": "crash: dur (sand ~1.3 s, pebble ~0.65 s), attack (sand 200 ms, pebble 40 ms)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380,
          170,
          330,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-10",
         "maxclass": "newobj",
         "text": "* 2.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          200,
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
         "id": "obj-11",
         "maxclass": "newobj",
         "text": "f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          230,
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
         "id": "obj-12",
         "maxclass": "newobj",
         "text": "r sea_splash",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          300,
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
         "id": "obj-13",
         "maxclass": "newobj",
         "text": "r sea_wsize",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          120,
          300,
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
         "id": "obj-14",
         "maxclass": "newobj",
         "text": "pak f f",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          330,
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
         "id": "obj-15",
         "maxclass": "newobj",
         "text": "expr $f1*$f2*3.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          360,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          390,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-17",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          20,
          420,
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
         "id": "obj-18",
         "maxclass": "comment",
         "text": "level = Splash x wave size",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          70,
          420,
          170,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-19",
         "maxclass": "newobj",
         "text": "r sea_bright",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          250,
          300,
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
         "id": "obj-20",
         "maxclass": "newobj",
         "text": "expr 1500.+5000.*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
          330,
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
         "id": "obj-21",
         "maxclass": "comment",
         "text": "crash brightness at its peak",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          390,
          330,
          200,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-22",
         "maxclass": "message",
         "text": "0, 1 15, 0 350",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          600,
          260,
          112,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-23",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          600,
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
         "id": "obj-24",
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
         ]
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          700,
          320,
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
         "text": "lores~ 110. 0.5",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          700,
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
         "id": "obj-27",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          380,
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
         "text": "expr 0.8+2.4*$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          800,
          350,
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
         "id": "obj-29",
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          800,
          380,
          49,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          800,
          410,
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
         "id": "obj-31",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          440,
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
          600,
          470,
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
         "maxclass": "comment",
         "text": "whump (plunging waves)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          650,
          470,
          160,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-34",
         "maxclass": "message",
         "text": "0, 1 250, 0 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          400,
          260,
          112,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          400,
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
         "id": "obj-36",
         "maxclass": "newobj",
         "text": "r sea_sr",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          900,
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
         "id": "obj-37",
         "maxclass": "newobj",
         "text": "expr 700./$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          900,
          110,
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
         "id": "obj-38",
         "maxclass": "newobj",
         "text": "loadbang",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          80,
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
         "id": "obj-39",
         "maxclass": "message",
         "text": "44100.",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          1000,
          110,
          56,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-40",
         "maxclass": "comment",
         "text": "foam: up to ~350 bubbles/s (threshold = 1 - 2 x rate / samplerate)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          900,
          140,
          260,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-41",
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          320,
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
         "text": "!-~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          400,
          350,
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
         "maxclass": "comment",
         "text": "---- L ----",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          495,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-44",
         "maxclass": "newobj",
         "text": "random 250",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          520,
          82,
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
         "text": "delay",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          550,
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
         "maxclass": "newobj",
         "text": "zl reg",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          110,
          550,
          54,
          22
         ],
         "outlettype": [
          "",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-47",
         "maxclass": "message",
         "text": "0, 1 $2, 0 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          110,
          580,
          105,
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
          110,
          610,
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
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          110,
          640,
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
         "id": "obj-50",
         "maxclass": "newobj",
         "text": "*~ 3000.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          670,
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
         "id": "obj-51",
         "maxclass": "newobj",
         "text": "+~ 300.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          700,
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
         "text": "rand~ 17.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          610,
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
         "id": "obj-53",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          640,
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
         "maxclass": "newobj",
         "text": "*~ 1.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          670,
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
         "text": "+~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          700,
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
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          670,
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
          20,
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
         "id": "obj-58",
         "maxclass": "newobj",
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          730,
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
         "id": "obj-59",
         "maxclass": "newobj",
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          760,
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
         "id": "obj-60",
         "maxclass": "newobj",
         "text": "lores~ 150. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          140,
          790,
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
         "id": "obj-61",
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          820,
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
         "id": "obj-62",
         "maxclass": "comment",
         "text": "<- minus lows",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          70,
          820,
          100,
          20
         ],
         "fontsize": 12
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
          20,
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
         "id": "obj-64",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          880,
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
         "id": "obj-65",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          270,
          760,
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
         "id": "obj-66",
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          790,
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
         "id": "obj-67",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          350,
          790,
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
         "id": "obj-68",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          820,
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
         "id": "obj-69",
         "maxclass": "newobj",
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          970,
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
         "id": "obj-70",
         "maxclass": "newobj",
         "text": "rand~ 23.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          270,
          850,
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
         "id": "obj-71",
         "maxclass": "newobj",
         "text": "*~ 244.99999999999997",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          880,
          159,
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
         "text": "+~ 700.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          910,
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
         "id": "obj-73",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          270,
          940,
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
         "id": "obj-74",
         "maxclass": "newobj",
         "text": "rand~ 30.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          385,
          850,
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
         "id": "obj-75",
         "maxclass": "newobj",
         "text": "*~ 454.99999999999994",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          385,
          880,
          159,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-76",
         "maxclass": "newobj",
         "text": "+~ 1300.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          385,
          910,
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
         "id": "obj-77",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          385,
          940,
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
         "id": "obj-78",
         "maxclass": "newobj",
         "text": "rand~ 37.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          500,
          850,
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
         "id": "obj-79",
         "maxclass": "newobj",
         "text": "*~ 840.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
          880,
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
         "id": "obj-80",
         "maxclass": "newobj",
         "text": "+~ 2400.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          500,
          910,
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
         "id": "obj-81",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          500,
          940,
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
         "id": "obj-82",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          1000,
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
         "id": "obj-83",
         "maxclass": "comment",
         "text": "foam bubbles",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          320,
          1000,
          100,
          20
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
          20,
          1060,
          30,
          30
         ],
         "comment": "",
         "id": "obj-84"
        }
       },
       {
        "box": {
         "id": "obj-85",
         "maxclass": "comment",
         "text": "---- R ----",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          640,
          495,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-86",
         "maxclass": "newobj",
         "text": "random 250",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          520,
          82,
          22
         ],
         "outlettype": [
          "int"
         ]
        }
       },
       {
        "box": {
         "id": "obj-87",
         "maxclass": "newobj",
         "text": "delay",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          550,
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
         "id": "obj-88",
         "maxclass": "newobj",
         "text": "zl reg",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          730,
          550,
          54,
          22
         ],
         "outlettype": [
          "",
          ""
         ]
        }
       },
       {
        "box": {
         "id": "obj-89",
         "maxclass": "message",
         "text": "0, 1 $2, 0 $1",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          730,
          580,
          105,
          22
         ]
        }
       },
       {
        "box": {
         "id": "obj-90",
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          730,
          610,
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
         "id": "obj-91",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          730,
          640,
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
         "id": "obj-92",
         "maxclass": "newobj",
         "text": "*~ 3000.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          670,
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
         "id": "obj-93",
         "maxclass": "newobj",
         "text": "+~ 300.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          700,
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
         "id": "obj-94",
         "maxclass": "newobj",
         "text": "rand~ 21.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1040,
          610,
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
         "id": "obj-95",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1040,
          640,
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
         "text": "*~ 1.2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1040,
          670,
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
         "id": "obj-97",
         "maxclass": "newobj",
         "text": "+~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1040,
          700,
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
         "id": "obj-98",
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          640,
          670,
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
         "id": "obj-99",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
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
         "id": "obj-100",
         "maxclass": "newobj",
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          640,
          730,
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
         "id": "obj-101",
         "maxclass": "newobj",
         "text": "lores~ 1000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          640,
          760,
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
         "id": "obj-102",
         "maxclass": "newobj",
         "text": "lores~ 150. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          760,
          790,
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
         "id": "obj-103",
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          820,
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
         "id": "obj-104",
         "maxclass": "comment",
         "text": "<- minus lows",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          690,
          820,
          100,
          20
         ],
         "fontsize": 12
        }
       },
       {
        "box": {
         "id": "obj-105",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
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
         "id": "obj-106",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          640,
          880,
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
         "id": "obj-107",
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          890,
          760,
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
         "id": "obj-108",
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          790,
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
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          970,
          790,
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
         "id": "obj-110",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          820,
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
         "id": "obj-111",
         "maxclass": "newobj",
         "text": "*~ 4.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          970,
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
         "id": "obj-112",
         "maxclass": "newobj",
         "text": "rand~ 26.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          890,
          850,
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
         "id": "obj-113",
         "maxclass": "newobj",
         "text": "*~ 244.99999999999997",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          880,
          159,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-114",
         "maxclass": "newobj",
         "text": "+~ 700.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          910,
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
         "id": "obj-115",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          890,
          940,
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
         "id": "obj-116",
         "maxclass": "newobj",
         "text": "rand~ 33.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1005,
          850,
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
         "id": "obj-117",
         "maxclass": "newobj",
         "text": "*~ 454.99999999999994",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1005,
          880,
          159,
          22
         ],
         "outlettype": [
          "signal"
         ]
        }
       },
       {
        "box": {
         "id": "obj-118",
         "maxclass": "newobj",
         "text": "+~ 1300.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1005,
          910,
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
         "id": "obj-119",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          1005,
          940,
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
         "id": "obj-120",
         "maxclass": "newobj",
         "text": "rand~ 40.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1120,
          850,
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
         "id": "obj-121",
         "maxclass": "newobj",
         "text": "*~ 840.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1120,
          880,
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
         "id": "obj-122",
         "maxclass": "newobj",
         "text": "+~ 2400.0",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1120,
          910,
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
         "id": "obj-123",
         "maxclass": "newobj",
         "text": "reson~ 1. 1000. 20.",
         "numinlets": 4,
         "numoutlets": 1,
         "patching_rect": [
          1120,
          940,
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
         "id": "obj-124",
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          890,
          1000,
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
         "id": "obj-125",
         "maxclass": "comment",
         "text": "foam bubbles",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          940,
          1000,
          100,
          20
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
          640,
          1060,
          30,
          30
         ],
         "comment": "",
         "id": "obj-126"
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
          "obj-4",
          3
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
          "obj-6",
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
          "obj-7",
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
          "obj-4",
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
          "obj-27",
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
          "obj-27",
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
          "obj-17",
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
          "obj-11",
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
          "obj-37",
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
          "obj-41",
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
          "obj-42",
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
          "obj-8",
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
          "obj-48",
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
          "obj-50",
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
          "obj-52",
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
          "obj-51",
          0
         ],
         "destination": [
          "obj-58",
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
          "obj-59",
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
          "obj-60",
          0
         ],
         "destination": [
          "obj-61",
          1
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
          "obj-63",
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
          "obj-64",
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
          "obj-64",
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
          "obj-42",
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
          "obj-68",
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
          "obj-68",
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
          "obj-72",
          0
         ],
         "destination": [
          "obj-73",
          2
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
          "obj-69",
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
          "obj-68",
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
          "obj-77",
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
          "obj-80",
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
          "obj-81",
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
          2
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
          "obj-82",
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
          "obj-82",
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
          "obj-84",
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
          "obj-84",
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
          "obj-84",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-4",
          2
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
          "obj-86",
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
          "obj-8",
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
          "obj-91",
          1
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
          "obj-20",
          0
         ],
         "destination": [
          "obj-92",
          1
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
          "obj-95",
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
          "obj-97",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
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
          "obj-97",
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
          "obj-99",
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
          "obj-100",
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
          "obj-93",
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
          "obj-93",
          0
         ],
         "destination": [
          "obj-101",
          1
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
          "obj-101",
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
          1
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
          "obj-105",
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
          "obj-105",
          1
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
          "obj-17",
          0
         ],
         "destination": [
          "obj-106",
          1
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
          "obj-108",
          1
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
       },
       {
        "patchline": {
         "source": [
          "obj-109",
          0
         ],
         "destination": [
          "obj-110",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-112",
          0
         ],
         "destination": [
          "obj-113",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-113",
          0
         ],
         "destination": [
          "obj-114",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-110",
          0
         ],
         "destination": [
          "obj-115",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-114",
          0
         ],
         "destination": [
          "obj-115",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-115",
          0
         ],
         "destination": [
          "obj-111",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-116",
          0
         ],
         "destination": [
          "obj-117",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-117",
          0
         ],
         "destination": [
          "obj-118",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-110",
          0
         ],
         "destination": [
          "obj-119",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-118",
          0
         ],
         "destination": [
          "obj-119",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-119",
          0
         ],
         "destination": [
          "obj-111",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-120",
          0
         ],
         "destination": [
          "obj-121",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-121",
          0
         ],
         "destination": [
          "obj-122",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-110",
          0
         ],
         "destination": [
          "obj-123",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-122",
          0
         ],
         "destination": [
          "obj-123",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-123",
          0
         ],
         "destination": [
          "obj-111",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-111",
          0
         ],
         "destination": [
          "obj-124",
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
          "obj-124",
          1
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
          "obj-126",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-124",
          0
         ],
         "destination": [
          "obj-126",
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
          "obj-126",
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
     "id": "obj-51"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "the break itself",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-52"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p sand",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      590,
      360,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       60,
       60,
       820,
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
         "maxclass": "comment",
         "text": "SAND: water soaking into sand - a dense fizz of tiny bubble pops plus a soft hiss. Pops are random single-sample impulses (noise > threshold); the threshold drops as the fizz envelope rises, so more pops. Faded out as Beach goes towards pebble.",
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
         "text": "r sea_fizz",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          82,
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
         "maxclass": "message",
         "text": "$1 10",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          90,
          47,
          22
         ],
         "id": "obj-3"
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
          120,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_beach",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          60,
          88,
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
         "text": "expr (1.-$f1)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          120,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
          150,
          47,
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
          200,
          180,
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
          200,
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
         "maxclass": "newobj",
         "text": "r sea_sr",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          420,
          60,
          68,
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
         "text": "expr -2.*2500.0/$f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          420,
          90,
          141,
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
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          200,
          49,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          235,
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
         "maxclass": "comment",
         "text": "threshold = 1 - 2 x pops/s / samplerate",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          520,
          235,
          260,
          20
         ],
         "fontsize": 12,
         "id": "obj-14"
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
          280,
          55,
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
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          315,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          80,
          315,
          55,
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
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          350,
          36,
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
         "text": "lores~ 2500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          110,
          385,
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
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          420,
          36,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          180,
          280,
          55,
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
         "text": "lores~ 3500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          180,
          315,
          110,
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
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          350,
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
         "text": "*~ 0.1232",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          180,
          385,
          75,
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
         "text": "*~ 1.027",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          455,
          68,
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
          20,
          490,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          525,
          30,
          30
         ],
         "id": "obj-27"
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
          280,
          55,
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
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          315,
          36,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          360,
          315,
          55,
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
          350,
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
         "text": "lores~ 2500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          390,
          385,
          110,
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
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          420,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-33"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          460,
          280,
          55,
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
         "text": "lores~ 3500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          460,
          315,
          110,
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
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          350,
          36,
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
         "text": "*~ 0.1232",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          460,
          385,
          75,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-37"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 1.027",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          455,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-38"
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
          490,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-39"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          525,
          30,
          30
         ],
         "id": "obj-40"
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
          "obj-13",
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
          "obj-25",
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
          "obj-33",
          1
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
          "obj-9",
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
       }
      ]
     },
     "outlettype": [
      "signal",
      "signal"
     ],
     "id": "obj-53"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "fizz of water soaking in",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      590,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-54"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p pebbles",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      780,
      360,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       60,
       60,
       1500,
       900
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
         "text": "PEBBLES: the backwash dragging stones down the beach - the classic rattle/hiss. Eight click streams: random impulses (more as the backwash peaks, and in clumps) each ringing a band-pass biquad~ (a stone's 'clack'). Stones = bigger stones, lower clacks. Drag = how many. Plus a band of hiss (the roar). Faded in as Beach goes towards pebble.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          1300,
          48
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_back",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          20,
          60,
          82,
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
         "maxclass": "message",
         "text": "$1 10",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          20,
          90,
          47,
          22
         ],
         "id": "obj-3"
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
          120,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_beach",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          200,
          60,
          88,
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
         "text": "expr $f1",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          120,
          68,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          200,
          150,
          47,
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
          200,
          180,
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
         "text": "rand~ 25.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          60,
          75,
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
         "maxclass": "newobj",
         "text": "*~ 0.5",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          95,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          420,
          130,
          49,
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
          200,
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
         "maxclass": "comment",
         "text": "<- backwash x clumping (stones move in bursts)",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          70,
          200,
          300,
          20
         ],
         "fontsize": 12,
         "id": "obj-13"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_stones",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          600,
          60,
          95,
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
         "text": "r sea_sr",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          720,
          60,
          68,
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
         "maxclass": "newobj",
         "text": "r sea_drag",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          840,
          60,
          82,
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
         "text": "pak 0.4 44100.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          600,
          95,
          108,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-17"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pak 0.6 44100.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          840,
          95,
          108,
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
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          820,
          49,
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
         "text": "*~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          820,
          49,
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
         "text": "expr 6.28319*2100.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          250,
          170,
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
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          20,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-22"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          20,
          450,
          150,
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
         "text": "expr (sin($f1)/20.)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-24"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/20.)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          28,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-25"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          36,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-26"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/20.))/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          44,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-27"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*70.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          485,
          170,
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
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          520,
          49,
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
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          550,
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
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          580,
          55,
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
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          610,
          36,
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
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          80,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-33"
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
          640,
          36,
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
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          20,
          670,
          150,
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
         "text": "*~ 0.988",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          705,
          68,
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
         "text": "*~ 0.156",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          90,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-37"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*2900.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          250,
          170,
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
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          200,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-39"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          200,
          450,
          150,
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
         "text": "expr (sin($f1)/24.)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-41"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/24.)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          208,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-42"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          216,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-43"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/24.))/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          224,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-44"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*70.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          485,
          170,
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
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-46"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-47"
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
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-48"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-49"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          260,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-50"
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
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-51"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          200,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-52"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.383",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-53"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.924",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          270,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-54"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*3600.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          250,
          170,
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
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          380,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-56"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          380,
          450,
          150,
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
         "text": "expr (sin($f1)/18.)/(1.+(sin($f1)/18.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-58"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/18.)/(1.+(sin($f1)/18.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          388,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-59"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/18.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          396,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-60"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/18.))/(1.+(sin($f1)/18.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          404,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-61"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*60.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-62"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-63"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-64"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          380,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-65"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-66"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          440,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-67"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-68"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          380,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-69"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.853",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          380,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-70"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.522",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          450,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-71"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*4500.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          250,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-72"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          560,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-73"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          560,
          450,
          150,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-74"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (sin($f1)/28.)/(1.+(sin($f1)/28.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-75"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/28.)/(1.+(sin($f1)/28.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          568,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-76"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/28.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          576,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-77"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/28.))/(1.+(sin($f1)/28.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          584,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-78"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*60.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-79"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-80"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-81"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-82"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-83"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          620,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-84"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-85"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          560,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-86"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.156",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-87"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.988",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          630,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-88"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*5600.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          250,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-89"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          740,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-90"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          740,
          450,
          150,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-91"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (sin($f1)/20.)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          740,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-92"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/20.)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          748,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-93"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          756,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-94"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/20.))/(1.+(sin($f1)/20.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          764,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-95"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*50.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-96"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-97"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-98"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          740,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-99"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-100"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          800,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-101"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-102"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          740,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-103"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.938",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          740,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-104"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.346",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          810,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-105"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*7000.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          250,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-106"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          920,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-107"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          920,
          450,
          150,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-108"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (sin($f1)/24.)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          920,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-109"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/24.)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          928,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-110"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          936,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-111"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/24.))/(1.+(sin($f1)/24.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          944,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-112"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*45.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-113"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-114"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-115"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          920,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-116"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-117"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          980,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-118"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-119"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          920,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-120"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.588",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          920,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-121"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.809",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          990,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-122"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*650.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          250,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-123"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          1100,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-124"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          450,
          150,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-125"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (sin($f1)/12.)/(1.+(sin($f1)/12.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-126"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/12.)/(1.+(sin($f1)/12.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1108,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-127"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/12.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1116,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-128"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/12.))/(1.+(sin($f1)/12.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1124,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-129"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*16.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-130"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-131"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-132"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-133"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-134"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1160,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-135"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-136"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-137"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.522",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1100,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-138"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.853",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1170,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-139"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 6.28319*1100.*exp(-1.1*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          250,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-140"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "t f f f f",
         "numinlets": 1,
         "numoutlets": 4,
         "patching_rect": [
          1280,
          280,
          75,
          22
         ],
         "outlettype": [
          "float",
          "float",
          "float",
          "float"
         ],
         "id": "obj-141"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pack 0. 0. 0. 0. 0.",
         "numinlets": 5,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          450,
          150,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-142"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (sin($f1)/14.)/(1.+(sin($f1)/14.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          310,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-143"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -(sin($f1)/14.)/(1.+(sin($f1)/14.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1288,
          345,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-144"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*cos($f1)/(1.+(sin($f1)/14.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1296,
          380,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-145"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr (1.-(sin($f1)/14.))/(1.+(sin($f1)/14.))",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1304,
          415,
          160,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-146"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr -2.*22.*(0.15+0.85*$f1)/$f2",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          485,
          170,
          22
         ],
         "outlettype": [
          ""
         ],
         "fontsize": 9.0,
         "id": "obj-147"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          520,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-148"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 1.",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          550,
          49,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-149"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          580,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-150"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": ">~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          610,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-151"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1340,
          610,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-152"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          640,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-153"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "biquad~ 0. 0. 0. 0. 0.",
         "numinlets": 6,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          670,
          150,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-154"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.891",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1280,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-155"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.454",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1350,
          705,
          68,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-156"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "text": "streams (Hz, Q, clicks/s, pan): [(2100, 10, 70, -0.8), (2900, 12, 70, 0.5), (3600, 9, 60, -0.3), (4500, 14, 60, 0.8), (5600, 10, 50, -0.55), (7000, 12, 45, 0.2), (650, 6, 16, 0.3), (1100, 7, 22, -0.4)]",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          225,
          1400,
          20
         ],
         "fontsize": 12,
         "id": "obj-157"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_drag",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          700,
          82,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-158"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "expr 0.5*(0.3+0.7*$f1)",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          760,
          161,
          22
         ],
         "outlettype": [
          ""
         ],
         "id": "obj-159"
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
          1000,
          790,
          47,
          22
         ],
         "id": "obj-160"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          1000,
          820,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-161"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          1000,
          840,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-162"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          780,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-163"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 4000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          560,
          810,
          110,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-164"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 1200. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          675,
          810,
          110,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-165"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          840,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-166"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          560,
          870,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-167"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "noise~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          760,
          780,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-168"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 4000. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          760,
          810,
          110,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-169"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 1200. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          875,
          810,
          110,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-170"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          840,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-171"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          760,
          870,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-172"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 2.8198",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          855,
          75,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-173"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 2.8198",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          300,
          855,
          75,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-174"
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
          890,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-175"
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
          890,
          36,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-176"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          930,
          30,
          30
         ],
         "id": "obj-177"
        }
       },
       {
        "box": {
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          930,
          30,
          30
         ],
         "id": "obj-178"
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
          "obj-4",
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
          "obj-15",
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
          "obj-23",
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
          "obj-23",
          2
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
          "obj-23",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-22",
          3
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
          "obj-23",
          4
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
          "obj-28",
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
          "obj-29",
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
          "obj-30",
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
          "obj-34",
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
          "obj-35",
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
          "obj-19",
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
          "obj-40",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-39",
          1
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
          "obj-40",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-39",
          2
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
          "obj-40",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-39",
          3
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
          "obj-40",
          4
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
          "obj-45",
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
          "obj-40",
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
          "obj-19",
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
          "obj-57",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          1
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
          "obj-57",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          2
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
          "obj-57",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-56",
          3
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
          "obj-57",
          4
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
          "obj-62",
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
          "obj-64",
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
          "obj-67",
          0
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
          "obj-69",
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
          "obj-69",
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
          "obj-70",
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
          "obj-71",
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
          "obj-74",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-73",
          1
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
          "obj-74",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-73",
          2
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
          "obj-74",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-73",
          3
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
          "obj-74",
          4
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
          "obj-79",
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
          "obj-80",
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
          "obj-81",
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
          "obj-81",
          0
         ],
         "destination": [
          "obj-83",
          1
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
          "obj-86",
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
          "obj-86",
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
          "obj-87",
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
          "obj-88",
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
          "obj-19",
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
          "obj-92",
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
          1
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
          "obj-91",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-90",
          2
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
          "obj-94",
          0
         ],
         "destination": [
          "obj-91",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-90",
          3
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
          "obj-91",
          4
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
          "obj-96",
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
          "obj-97",
          1
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
          "obj-98",
          0
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
          "obj-100",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-98",
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
          "obj-100",
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
          "obj-101",
          0
         ],
         "destination": [
          "obj-102",
          1
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
          "obj-103",
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
          "obj-104",
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
          "obj-105",
          0
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
          "obj-19",
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
          "obj-107",
          0
         ],
         "destination": [
          "obj-109",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-109",
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
          1
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
          "obj-110",
          0
         ],
         "destination": [
          "obj-108",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-107",
          2
         ],
         "destination": [
          "obj-111",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-111",
          0
         ],
         "destination": [
          "obj-108",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-107",
          3
         ],
         "destination": [
          "obj-112",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-112",
          0
         ],
         "destination": [
          "obj-108",
          4
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
          "obj-113",
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
          "obj-114",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-113",
          0
         ],
         "destination": [
          "obj-114",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-114",
          0
         ],
         "destination": [
          "obj-115",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-116",
          0
         ],
         "destination": [
          "obj-117",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-115",
          0
         ],
         "destination": [
          "obj-117",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-117",
          0
         ],
         "destination": [
          "obj-119",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-118",
          0
         ],
         "destination": [
          "obj-119",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-119",
          0
         ],
         "destination": [
          "obj-120",
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
          "obj-120",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-120",
          0
         ],
         "destination": [
          "obj-121",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-120",
          0
         ],
         "destination": [
          "obj-122",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-121",
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
          "obj-122",
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
          "obj-123",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-123",
          0
         ],
         "destination": [
          "obj-124",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-124",
          0
         ],
         "destination": [
          "obj-126",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-126",
          0
         ],
         "destination": [
          "obj-125",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-124",
          1
         ],
         "destination": [
          "obj-127",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-127",
          0
         ],
         "destination": [
          "obj-125",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-124",
          2
         ],
         "destination": [
          "obj-128",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-128",
          0
         ],
         "destination": [
          "obj-125",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-124",
          3
         ],
         "destination": [
          "obj-129",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-129",
          0
         ],
         "destination": [
          "obj-125",
          4
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
          "obj-130",
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
          "obj-131",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-130",
          0
         ],
         "destination": [
          "obj-131",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-131",
          0
         ],
         "destination": [
          "obj-132",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-133",
          0
         ],
         "destination": [
          "obj-134",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-132",
          0
         ],
         "destination": [
          "obj-134",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-134",
          0
         ],
         "destination": [
          "obj-136",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-135",
          0
         ],
         "destination": [
          "obj-136",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-136",
          0
         ],
         "destination": [
          "obj-137",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-125",
          0
         ],
         "destination": [
          "obj-137",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-137",
          0
         ],
         "destination": [
          "obj-138",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-137",
          0
         ],
         "destination": [
          "obj-139",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-138",
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
          "obj-139",
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
          "obj-140",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-140",
          0
         ],
         "destination": [
          "obj-141",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-141",
          0
         ],
         "destination": [
          "obj-143",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-143",
          0
         ],
         "destination": [
          "obj-142",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-141",
          1
         ],
         "destination": [
          "obj-144",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-144",
          0
         ],
         "destination": [
          "obj-142",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-141",
          2
         ],
         "destination": [
          "obj-145",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-145",
          0
         ],
         "destination": [
          "obj-142",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-141",
          3
         ],
         "destination": [
          "obj-146",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-146",
          0
         ],
         "destination": [
          "obj-142",
          4
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
          "obj-147",
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
          "obj-148",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-147",
          0
         ],
         "destination": [
          "obj-148",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-148",
          0
         ],
         "destination": [
          "obj-149",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-150",
          0
         ],
         "destination": [
          "obj-151",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-149",
          0
         ],
         "destination": [
          "obj-151",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-151",
          0
         ],
         "destination": [
          "obj-153",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-152",
          0
         ],
         "destination": [
          "obj-153",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-153",
          0
         ],
         "destination": [
          "obj-154",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-142",
          0
         ],
         "destination": [
          "obj-154",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-154",
          0
         ],
         "destination": [
          "obj-155",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-154",
          0
         ],
         "destination": [
          "obj-156",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-155",
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
          "obj-156",
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
          "obj-158",
          0
         ],
         "destination": [
          "obj-159",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-159",
          0
         ],
         "destination": [
          "obj-160",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-160",
          0
         ],
         "destination": [
          "obj-161",
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
          "obj-162",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-161",
          0
         ],
         "destination": [
          "obj-162",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-163",
          0
         ],
         "destination": [
          "obj-164",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-163",
          0
         ],
         "destination": [
          "obj-165",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-164",
          0
         ],
         "destination": [
          "obj-166",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-165",
          0
         ],
         "destination": [
          "obj-166",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-166",
          0
         ],
         "destination": [
          "obj-167",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-162",
          0
         ],
         "destination": [
          "obj-167",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-167",
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
          "obj-168",
          0
         ],
         "destination": [
          "obj-169",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-168",
          0
         ],
         "destination": [
          "obj-170",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-169",
          0
         ],
         "destination": [
          "obj-171",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-170",
          0
         ],
         "destination": [
          "obj-171",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-171",
          0
         ],
         "destination": [
          "obj-172",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-162",
          0
         ],
         "destination": [
          "obj-172",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-172",
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
          "obj-173",
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
          "obj-174",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-173",
          0
         ],
         "destination": [
          "obj-175",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-174",
          0
         ],
         "destination": [
          "obj-176",
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
          "obj-175",
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
          "obj-176",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-175",
          0
         ],
         "destination": [
          "obj-177",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-176",
          0
         ],
         "destination": [
          "obj-178",
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
     "id": "obj-55"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rattling backwash",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      780,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "p bed",
     "numinlets": 0,
     "numoutlets": 2,
     "patching_rect": [
      970,
      360,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
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
         "text": "BED: the rest of the sea - a low, slowly breathing rumble of distant surf.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          600,
          20
         ],
         "fontsize": 12,
         "id": "obj-1"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_bed",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          300,
          40,
          75,
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
         "text": "expr $f1*$f1*3.9713",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          300,
          100,
          141,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          300,
          130,
          47,
          22
         ],
         "id": "obj-4"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          300,
          160,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-5"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "rand~ 0.08",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          40,
          82,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 0.4",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          75,
          55,
          22
         ],
         "outlettype": [
          "signal"
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "+~ 0.6",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          110,
          55,
          22
         ],
         "outlettype": [
          "signal"
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
          200,
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
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          240,
          49,
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
         "text": "lores~ 350. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          275,
          110,
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
         "text": "lores~ 350. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          20,
          310,
          110,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          345,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          385,
          30,
          30
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          200,
          240,
          49,
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
         "text": "lores~ 350. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          275,
          110,
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
         "text": "lores~ 350. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "patching_rect": [
          200,
          310,
          110,
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
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          200,
          345,
          36,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          200,
          385,
          30,
          30
         ],
         "id": "obj-19"
        }
       },
       {
        "box": {
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          400,
          20,
          380,
          33
         ],
         "text": "distant breakers: a mid band (400-1500 Hz) of surf swelling and fading at random, separately left and right",
         "id": "obj-loose28"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          70,
          47,
          22
         ],
         "id": "obj-loose29"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 1500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          100,
          117,
          22
         ],
         "id": "obj-loose30"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 400. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          500,
          130,
          110,
          22
         ],
         "id": "obj-loose31"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          160,
          40,
          22
         ],
         "id": "obj-loose32"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "rand~ 0.21",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          500,
          190,
          82,
          22
         ],
         "id": "obj-loose33"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          500,
          220,
          40,
          22
         ],
         "id": "obj-loose34"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          250,
          40,
          22
         ],
         "id": "obj-loose35"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          280,
          40,
          22
         ],
         "id": "obj-loose36"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 1.2",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          400,
          310,
          54,
          22
         ],
         "id": "obj-loose37"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "pink~",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          70,
          47,
          22
         ],
         "id": "obj-loose38"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 1500. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          100,
          117,
          22
         ],
         "id": "obj-loose39"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "lores~ 400. 0.",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          700,
          130,
          110,
          22
         ],
         "id": "obj-loose40"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "-~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          160,
          40,
          22
         ],
         "id": "obj-loose41"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "rand~ 0.28",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          700,
          190,
          82,
          22
         ],
         "id": "obj-loose42"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          700,
          220,
          40,
          22
         ],
         "id": "obj-loose43"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          250,
          40,
          22
         ],
         "id": "obj-loose44"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          280,
          40,
          22
         ],
         "id": "obj-loose45"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "*~ 1.2",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          600,
          310,
          54,
          22
         ],
         "id": "obj-loose46"
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
          "obj-5",
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
          "obj-9",
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
          "obj-loose29",
          0
         ],
         "destination": [
          "obj-loose30",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose30",
          0
         ],
         "destination": [
          "obj-loose31",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose30",
          0
         ],
         "destination": [
          "obj-loose32",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose31",
          0
         ],
         "destination": [
          "obj-loose32",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose33",
          0
         ],
         "destination": [
          "obj-loose34",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose33",
          0
         ],
         "destination": [
          "obj-loose34",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose32",
          0
         ],
         "destination": [
          "obj-loose35",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose34",
          0
         ],
         "destination": [
          "obj-loose35",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose35",
          0
         ],
         "destination": [
          "obj-loose36",
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
          "obj-loose36",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose36",
          0
         ],
         "destination": [
          "obj-loose37",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose37",
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
          "obj-loose38",
          0
         ],
         "destination": [
          "obj-loose39",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose39",
          0
         ],
         "destination": [
          "obj-loose40",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose39",
          0
         ],
         "destination": [
          "obj-loose41",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose40",
          0
         ],
         "destination": [
          "obj-loose41",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose42",
          0
         ],
         "destination": [
          "obj-loose43",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose42",
          0
         ],
         "destination": [
          "obj-loose43",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose41",
          0
         ],
         "destination": [
          "obj-loose44",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose43",
          0
         ],
         "destination": [
          "obj-loose44",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose44",
          0
         ],
         "destination": [
          "obj-loose45",
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
          "obj-loose45",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose45",
          0
         ],
         "destination": [
          "obj-loose46",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "obj-loose46",
          0
         ],
         "destination": [
          "obj-19",
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
     "id": "obj-57"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "distant surf rumble",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      970,
      384,
      180,
      34
     ],
     "fontsize": 12,
     "id": "obj-58"
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
      450,
      110,
      22
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 8,
       "minor": 1,
       "revision": 2,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       60,
       60,
       700,
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
         "maxclass": "comment",
         "text": "MASTER: Width (0 = mono, 1 = full stereo) -> Volume -> tanh~ soft clip.",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          2,
          600,
          20
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
          "signal"
         ],
         "patching_rect": [
          20,
          40,
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
          "signal"
         ],
         "patching_rect": [
          250,
          40,
          30,
          30
         ],
         "id": "obj-3"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_width",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          450,
          40,
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
         "text": "expr (1.+$f1)/2.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          450,
          100,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          450,
          130,
          47,
          22
         ],
         "id": "obj-6"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          450,
          160,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-7"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_width",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          560,
          200,
          88,
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
         "text": "expr (1.-$f1)/2.",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          560,
          260,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          560,
          290,
          47,
          22
         ],
         "id": "obj-10"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          560,
          320,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
         ],
         "id": "obj-11"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "r sea_volume",
         "numinlets": 0,
         "numoutlets": 1,
         "patching_rect": [
          450,
          330,
          95,
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
         "text": "expr $f1*$f1*1.6",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          450,
          390,
          121,
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
         "maxclass": "message",
         "text": "$1 50",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          450,
          420,
          47,
          22
         ],
         "id": "obj-14"
        }
       },
       {
        "box": {
         "maxclass": "newobj",
         "text": "line~",
         "numinlets": 2,
         "numoutlets": 2,
         "patching_rect": [
          450,
          450,
          49,
          22
         ],
         "outlettype": [
          "signal",
          "bang"
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
          20,
          100,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          100,
          100,
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
         "maxclass": "newobj",
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          250,
          100,
          36,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          330,
          100,
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
         "text": "*~",
         "numinlets": 2,
         "numoutlets": 1,
         "patching_rect": [
          20,
          300,
          36,
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
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          20,
          335,
          49,
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
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          20,
          380,
          30,
          30
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
          250,
          300,
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
         "text": "tanh~",
         "numinlets": 1,
         "numoutlets": 1,
         "patching_rect": [
          250,
          335,
          49,
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
          250,
          380,
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
          "obj-7",
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
          "obj-3",
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
          "obj-11",
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
          "obj-7",
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
          "obj-2",
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
          "obj-15",
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
          "obj-23",
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
          "obj-25",
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
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "everything sums into master -> Width -> Volume -> soft clip",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      140,
      450,
      400,
      20
     ],
     "fontsize": 12,
     "id": "obj-60"
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
      500,
      80,
      13
     ],
     "id": "obj-61"
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
      518,
      80,
      13
     ],
     "id": "obj-62"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      120,
      495,
      45,
      45
     ],
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "<- click to start audio. Sync follows Max's own transport (Window > Transport); for Live, use M4L/Procedural Sea.amxd instead.",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      170,
      500,
      520,
      34
     ],
     "fontsize": 12,
     "id": "obj-64"
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
      160,
      56,
      48
     ],
     "varname": "sea_loose",
     "presentation": 1,
     "presentation_rect": [
      372,
      84,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.4
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Looseness",
       "parameter_shortname": "Loose",
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "id": "obj-loose1"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sea_loose",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      130,
      245,
      89,
      22
     ],
     "id": "obj-loose3"
    }
   }
  ],
  "lines": [
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
      "obj-46",
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
      "obj-49",
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
      "obj-49",
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
      "obj-61",
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
      "obj-62",
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
      "obj-63",
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
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-loose1",
      0
     ],
     "destination": [
      "obj-loose3",
      0
     ]
    }
   }
  ],
  "openinpresentation": 0
 }
}