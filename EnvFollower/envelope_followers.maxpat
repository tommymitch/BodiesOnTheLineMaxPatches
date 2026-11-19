{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 1,
   "revision": 4,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   100.0,
   100.0,
   769.0,
   704.0
  ],
  "boxes": [
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 11,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 1,
       "revision": 4,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       59.0,
       114.0,
       1000.0,
       759.0
      ],
      "boxes": [
       {
        "box": {
         "id": "f1_plus",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          50.0,
          100.0,
          35.0,
          22.0
         ],
         "text": "+ 1"
        }
       },
       {
        "box": {
         "id": "f1_cross",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "signal"
         ],
         "patching_rect": [
          130.0,
          100.0,
          70.0,
          22.0
         ],
         "text": "cross~ 150"
        }
       },
       {
        "box": {
         "id": "f1_sel",
         "maxclass": "newobj",
         "numinlets": 4,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          50.0,
          140.0,
          150.0,
          22.0
         ],
         "text": "selector~ 3"
        }
       },
       {
        "box": {
         "id": "f1_msa",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          210.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f1_mxa",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          210.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f1_msr",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          280.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f1_mxr",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          280.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f1_abs",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          50.0,
          175.0,
          40.0,
          22.0
         ],
         "text": "abs~"
        }
       },
       {
        "box": {
         "id": "f1_slide",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          50.0,
          205.0,
          250.0,
          22.0
         ],
         "text": "slide~"
        }
       },
       {
        "box": {
         "id": "f1_snap",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          50.0,
          235.0,
          81.0,
          22.0
         ],
         "text": "snapshot~ 20"
        }
       },
       {
        "box": {
         "id": "f1_db",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          265.0,
          45.0,
          22.0
         ],
         "text": "atodb"
        }
       },
       {
        "box": {
         "id": "f1_scale",
         "maxclass": "newobj",
         "numinlets": 6,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          295.0,
          115.0,
          22.0
         ],
         "text": "scale -60. 0. 0. 1."
        }
       },
       {
        "box": {
         "id": "f1_clip",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          325.0,
          65.0,
          22.0
         ],
         "text": "clip 0. 1."
        }
       },
       {
        "box": {
         "id": "f2_plus",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          380.0,
          100.0,
          35.0,
          22.0
         ],
         "text": "+ 1"
        }
       },
       {
        "box": {
         "id": "f2_cross",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "signal"
         ],
         "patching_rect": [
          460.0,
          100.0,
          74.0,
          22.0
         ],
         "text": "cross~ 3000"
        }
       },
       {
        "box": {
         "id": "f2_sel",
         "maxclass": "newobj",
         "numinlets": 4,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          380.0,
          140.0,
          150.0,
          22.0
         ],
         "text": "selector~ 3"
        }
       },
       {
        "box": {
         "id": "f2_msa",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          540.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f2_mxa",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          540.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f2_msr",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          610.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f2_mxr",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          610.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f2_abs",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          380.0,
          175.0,
          40.0,
          22.0
         ],
         "text": "abs~"
        }
       },
       {
        "box": {
         "id": "f2_slide",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          380.0,
          205.0,
          250.0,
          22.0
         ],
         "text": "slide~"
        }
       },
       {
        "box": {
         "id": "f2_snap",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          380.0,
          235.0,
          81.0,
          22.0
         ],
         "text": "snapshot~ 20"
        }
       },
       {
        "box": {
         "id": "f2_db",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          380.0,
          265.0,
          45.0,
          22.0
         ],
         "text": "atodb"
        }
       },
       {
        "box": {
         "id": "f2_scale",
         "maxclass": "newobj",
         "numinlets": 6,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          380.0,
          295.0,
          115.0,
          22.0
         ],
         "text": "scale -60. 0. 0. 1."
        }
       },
       {
        "box": {
         "id": "f2_clip",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          380.0,
          325.0,
          65.0,
          22.0
         ],
         "text": "clip 0. 1."
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-1",
         "index": 2,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          130.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-2",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          51.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-3",
         "index": 3,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          181.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-4",
         "index": 4,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          216.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-5",
         "index": 5,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          280.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-6",
         "index": 6,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          380.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-7",
         "index": 7,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          515.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-8",
         "index": 8,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          550.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-9",
         "index": 9,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          610.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-10",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          50.0,
          407.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-11",
         "index": 2,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          380.0,
          407.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "id": "f3_msa",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          860.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f3_mxa",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          860.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f3_msr",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "signal",
          "float"
         ],
         "patching_rect": [
          930.0,
          100.0,
          77.0,
          22.0
         ],
         "text": "mstosamps~"
        }
       },
       {
        "box": {
         "id": "f3_mxr",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 2,
         "outlettype": [
          "float",
          "int"
         ],
         "patching_rect": [
          930.0,
          130.0,
          74.0,
          22.0
         ],
         "text": "maximum 1."
        }
       },
       {
        "box": {
         "id": "f3_abs",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          700.0,
          175.0,
          40.0,
          22.0
         ],
         "text": "abs~"
        }
       },
       {
        "box": {
         "id": "f3_slide",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          700.0,
          205.0,
          250.0,
          22.0
         ],
         "text": "slide~"
        }
       },
       {
        "box": {
         "id": "f3_snap",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          700.0,
          235.0,
          81.0,
          22.0
         ],
         "text": "snapshot~ 20"
        }
       },
       {
        "box": {
         "id": "f3_db",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700.0,
          265.0,
          45.0,
          22.0
         ],
         "text": "atodb"
        }
       },
       {
        "box": {
         "id": "f3_scale",
         "maxclass": "newobj",
         "numinlets": 6,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700.0,
          295.0,
          115.0,
          22.0
         ],
         "text": "scale -60. 0. 0. 1."
        }
       },
       {
        "box": {
         "id": "f3_clip",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700.0,
          325.0,
          65.0,
          22.0
         ],
         "text": "clip 0. 1."
        }
       },
       {
        "box": {
         "id": "in3_0",
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          700,
          40,
          30,
          30
         ]
        }
       },
       {
        "box": {
         "id": "in3_1",
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          760,
          40,
          30,
          30
         ]
        }
       },
       {
        "box": {
         "id": "out3",
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          700,
          407,
          30,
          30
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "f1_slide",
          0
         ],
         "source": [
          "f1_abs",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-10",
          0
         ],
         "source": [
          "f1_clip",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_sel",
          3
         ],
         "source": [
          "f1_cross",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_sel",
          2
         ],
         "source": [
          "f1_cross",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_scale",
          0
         ],
         "source": [
          "f1_db",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_mxa",
          0
         ],
         "source": [
          "f1_msa",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_mxr",
          0
         ],
         "source": [
          "f1_msr",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_slide",
          1
         ],
         "source": [
          "f1_mxa",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_slide",
          2
         ],
         "source": [
          "f1_mxr",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_sel",
          0
         ],
         "source": [
          "f1_plus",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_clip",
          0
         ],
         "source": [
          "f1_scale",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_abs",
          0
         ],
         "source": [
          "f1_sel",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_snap",
          0
         ],
         "source": [
          "f1_slide",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_db",
          0
         ],
         "source": [
          "f1_snap",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_slide",
          0
         ],
         "source": [
          "f2_abs",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-11",
          0
         ],
         "source": [
          "f2_clip",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_sel",
          3
         ],
         "source": [
          "f2_cross",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_sel",
          2
         ],
         "source": [
          "f2_cross",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_scale",
          0
         ],
         "source": [
          "f2_db",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_mxa",
          0
         ],
         "source": [
          "f2_msa",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_mxr",
          0
         ],
         "source": [
          "f2_msr",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_slide",
          1
         ],
         "source": [
          "f2_mxa",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_slide",
          2
         ],
         "source": [
          "f2_mxr",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_sel",
          0
         ],
         "source": [
          "f2_plus",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_clip",
          0
         ],
         "source": [
          "f2_scale",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_abs",
          0
         ],
         "source": [
          "f2_sel",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_snap",
          0
         ],
         "source": [
          "f2_slide",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_db",
          0
         ],
         "source": [
          "f2_snap",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_plus",
          0
         ],
         "source": [
          "obj-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_cross",
          0
         ],
         "order": 2,
         "source": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_sel",
          1
         ],
         "order": 3,
         "source": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_cross",
          0
         ],
         "order": 0,
         "source": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_sel",
          1
         ],
         "order": 1,
         "source": [
          "obj-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_cross",
          1
         ],
         "source": [
          "obj-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_msa",
          0
         ],
         "source": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f1_msr",
          0
         ],
         "source": [
          "obj-5",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_plus",
          0
         ],
         "source": [
          "obj-6",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_cross",
          1
         ],
         "source": [
          "obj-7",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_msa",
          0
         ],
         "source": [
          "obj-8",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "f2_msr",
          0
         ],
         "source": [
          "obj-9",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_abs",
          0
         ],
         "destination": [
          "f3_slide",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_db",
          0
         ],
         "destination": [
          "f3_scale",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_msa",
          1
         ],
         "destination": [
          "f3_mxa",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_msr",
          1
         ],
         "destination": [
          "f3_mxr",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_mxa",
          0
         ],
         "destination": [
          "f3_slide",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_mxr",
          0
         ],
         "destination": [
          "f3_slide",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_scale",
          0
         ],
         "destination": [
          "f3_clip",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_slide",
          0
         ],
         "destination": [
          "f3_snap",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_snap",
          0
         ],
         "destination": [
          "f3_db",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "in3_0",
          0
         ],
         "destination": [
          "f3_msa",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "in3_1",
          0
         ],
         "destination": [
          "f3_msr",
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
          "f3_abs",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "f3_clip",
          0
         ],
         "destination": [
          "out3",
          0
         ]
        }
       }
      ]
     },
     "patching_rect": [
      20.0,
      240.0,
      900,
      22.0
     ],
     "text": "p env_follower"
    }
   },
   {
    "box": {
     "fontsize": 14.0,
     "id": "title",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      10.0,
      520.0,
      22.0
     ],
     "text": "Two envelope followers - output 0-1 (floor -60 dB) at 50 Hz"
    }
   },
   {
    "box": {
     "id": "note",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      32.0,
      600.0,
      20.0
     ],
     "text": "Audio passes straight through. Use on the Master track to follow the whole mix, or on any track."
    }
   },
   {
    "box": {
     "id": "pin",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      20.0,
      60.0,
      60.0,
      22.0
     ],
     "text": "plugin~"
    }
   },
   {
    "box": {
     "id": "pout",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      560.0,
      60.0,
      60.0,
      22.0
     ],
     "text": "plugout~"
    }
   },
   {
    "box": {
     "id": "sum",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      20.0,
      95.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "half",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      20.0,
      125.0,
      50.0,
      22.0
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "fontsize": 13.0,
     "id": "f1_lab",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      100.0,
      166.0,
      120.0,
      21.0
     ],
     "text": "Follower 1  (audioLo)"
    }
   },
   {
    "box": {
     "id": "f1_c1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      100.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Band"
    }
   },
   {
    "box": {
     "id": "f1_c2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      180.0,
      191.0,
      70.0,
      20.0
     ],
     "text": "Crossover"
    }
   },
   {
    "box": {
     "id": "f1_c3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      260.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Attack"
    }
   },
   {
    "box": {
     "id": "f1_c4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      340.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Release"
    }
   },
   {
    "box": {
     "id": "f1_band",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      100.0,
      213.0,
      70.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "Full",
        "Low",
        "High"
       ],
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Band 1",
       "parameter_mmax": 2,
       "parameter_modmode": 0,
       "parameter_shortname": "Band 1",
       "parameter_type": 2
      }
     },
     "varname": "live.menu"
    }
   },
   {
    "box": {
     "id": "f1_xo",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      180.0,
      213.0,
      60.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        150.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Crossover 1",
       "parameter_mmax": 20000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Crossover 1",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "live.numbox"
    }
   },
   {
    "box": {
     "id": "f1_att",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      260.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        5.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Attack 1",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_shortname": "Attack 1",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "live.numbox[1]"
    }
   },
   {
    "box": {
     "id": "f1_rel",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      340.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        150.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Release 1",
       "parameter_mmax": 10000.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Release 1",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "live.numbox[2]"
    }
   },
   {
    "box": {
     "format": 6,
     "id": "f1_out",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      45.0,
      297.0,
      70.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "floatoutput": 1,
     "id": "f1_meter",
     "ignoreclick": 1,
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      20.0,
      298.0,
      20.0,
      74.0
     ],
     "size": 1.0
    }
   },
   {
    "box": {
     "id": "f1_oc",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      45.0,
      352.0,
      133.0,
      20.0
     ],
     "text": "Follower 1 value (0-1)"
    }
   },
   {
    "box": {
     "fontsize": 13.0,
     "id": "f2_lab",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420.0,
      166.0,
      120.0,
      21.0
     ],
     "text": "Follower 2  (audioHi)"
    }
   },
   {
    "box": {
     "id": "f2_c1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      420.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Band"
    }
   },
   {
    "box": {
     "id": "f2_c2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      500.0,
      191.0,
      70.0,
      20.0
     ],
     "text": "Crossover"
    }
   },
   {
    "box": {
     "id": "f2_c3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      580.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Attack"
    }
   },
   {
    "box": {
     "id": "f2_c4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      660.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Release"
    }
   },
   {
    "box": {
     "id": "f2_band",
     "maxclass": "live.menu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      420.0,
      213.0,
      70.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "Full",
        "Low",
        "High"
       ],
       "parameter_initial": [
        2.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Band 2",
       "parameter_mmax": 2,
       "parameter_modmode": 0,
       "parameter_shortname": "Band 2",
       "parameter_type": 2
      }
     },
     "varname": "live.menu[1]"
    }
   },
   {
    "box": {
     "id": "f2_xo",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      500.0,
      213.0,
      60.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        3000.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Crossover 2",
       "parameter_mmax": 20000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Crossover 2",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "live.numbox[3]"
    }
   },
   {
    "box": {
     "id": "f2_att",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      580.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        5.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Attack 2",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_shortname": "Attack 2",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "live.numbox[4]"
    }
   },
   {
    "box": {
     "id": "f2_rel",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      660.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        150.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Release 2",
       "parameter_mmax": 10000.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Release 2",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "live.numbox[5]"
    }
   },
   {
    "box": {
     "format": 6,
     "id": "f2_out",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      660.0,
      288.0,
      70.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "floatoutput": 1,
     "id": "f2_meter",
     "ignoreclick": 1,
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      635.0,
      289.0,
      20.0,
      74.0
     ],
     "size": 1.0
    }
   },
   {
    "box": {
     "id": "f2_oc",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      660.0,
      343.0,
      102.0,
      20.0
     ],
     "text": "Follower 2 value (0-1)"
    }
   },
   {
    "box": {
     "fontsize": 13.0,
     "id": "f3_lab",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      740.0,
      166.0,
      120.0,
      21.0
     ],
     "text": "Follower 3  (audioFull, unfiltered)"
    }
   },
   {
    "box": {
     "id": "f3_c3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      900.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Attack"
    }
   },
   {
    "box": {
     "id": "f3_c4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      980.0,
      191.0,
      60.0,
      20.0
     ],
     "text": "Release"
    }
   },
   {
    "box": {
     "id": "f3_att",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      900.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        5.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Attack 3",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_shortname": "Attack 3",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "f3_att"
    }
   },
   {
    "box": {
     "id": "f3_rel",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      980.0,
      213.0,
      55.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        150.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Release 3",
       "parameter_mmax": 10000.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Release 3",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "f3_rel"
    }
   },
   {
    "box": {
     "format": 6,
     "id": "f3_out",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      685.0,
      297.0,
      70.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "floatoutput": 1,
     "id": "f3_meter",
     "ignoreclick": 1,
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      660.0,
      298.0,
      20.0,
      74.0
     ],
     "size": 1.0
    }
   },
   {
    "box": {
     "id": "f3_oc",
     "maxclass": "comment",
     "text": "Follower 3 value (0-1)",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      685,
      352,
      133,
      20
     ]
    }
   },
   {
    "box": {
     "id": "osc_c",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20,
      390,
      640,
      20
     ],
     "text": "OSC: every 20 ms send /audio audioHi audioLo audioFull (floats 0-1) as a UDP broadcast on port 6002"
    }
   },
   {
    "box": {
     "id": "osc_go",
     "maxclass": "newobj",
     "text": "live.thisdevice",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "int",
      "int"
     ],
     "patching_rect": [
      20,
      420,
      117,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_m",
     "maxclass": "newobj",
     "text": "metro 20",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      20,
      450,
      68,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_t",
     "maxclass": "newobj",
     "text": "t b b b",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "patching_rect": [
      20,
      480,
      120,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_f0",
     "maxclass": "newobj",
     "text": "f",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      20,
      510,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_f1",
     "maxclass": "newobj",
     "text": "f",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      80,
      510,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_f2",
     "maxclass": "newobj",
     "text": "f",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      140,
      510,
      40,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_pk",
     "maxclass": "newobj",
     "text": "pack 0. 0. 0.",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      540,
      120,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_pre",
     "maxclass": "newobj",
     "text": "prepend /audio",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      20,
      570,
      110,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_udp",
     "maxclass": "newobj",
     "text": "udpsend 255.255.255.255 6002",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      20,
      600,
      190,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_host",
     "maxclass": "message",
     "text": "host 255.255.255.255",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      240,
      570,
      140,
      22
     ]
    }
   },
   {
    "box": {
     "id": "osc_hc",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      240,
      595,
      360,
      33
     ],
     "text": "<- full broadcast (any network). If a network blocks it, edit this to that subnet's broadcast address and click it"
    }
   },
   {
    "box": {
     "id": "osc_ord",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      210,
      510,
      300,
      20
     ],
     "text": "<- Hi (follower 2), Lo (follower 1), Full (follower 3)"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-12",
      3
     ],
     "source": [
      "f1_att",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      1
     ],
     "source": [
      "f1_band",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      4
     ],
     "source": [
      "f1_rel",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      2
     ],
     "source": [
      "f1_xo",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      7
     ],
     "source": [
      "f2_att",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      5
     ],
     "source": [
      "f2_band",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      8
     ],
     "source": [
      "f2_rel",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      6
     ],
     "source": [
      "f2_xo",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      0
     ],
     "source": [
      "half",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "f1_meter",
      0
     ],
     "order": 1,
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "f1_out",
      0
     ],
     "order": 0,
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "f2_meter",
      0
     ],
     "order": 1,
     "source": [
      "obj-12",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "f2_out",
      0
     ],
     "order": 0,
     "source": [
      "obj-12",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "pout",
      1
     ],
     "order": 0,
     "source": [
      "pin",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "pout",
      0
     ],
     "order": 0,
     "source": [
      "pin",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum",
      1
     ],
     "order": 1,
     "source": [
      "pin",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum",
      0
     ],
     "order": 1,
     "source": [
      "pin",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "half",
      0
     ],
     "source": [
      "sum",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "f3_att",
      0
     ],
     "destination": [
      "obj-12",
      9
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "f3_rel",
      0
     ],
     "destination": [
      "obj-12",
      10
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      2
     ],
     "destination": [
      "f3_meter",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      2
     ],
     "destination": [
      "f3_out",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_go",
      0
     ],
     "destination": [
      "osc_m",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_m",
      0
     ],
     "destination": [
      "osc_t",
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
      "osc_f0",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_t",
      0
     ],
     "destination": [
      "osc_f0",
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
      "osc_f1",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_t",
      1
     ],
     "destination": [
      "osc_f1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      2
     ],
     "destination": [
      "osc_f2",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_t",
      2
     ],
     "destination": [
      "osc_f2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_f0",
      0
     ],
     "destination": [
      "osc_pk",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_f1",
      0
     ],
     "destination": [
      "osc_pk",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_f2",
      0
     ],
     "destination": [
      "osc_pk",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_pk",
      0
     ],
     "destination": [
      "osc_pre",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_pre",
      0
     ],
     "destination": [
      "osc_udp",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "osc_host",
      0
     ],
     "destination": [
      "osc_udp",
      0
     ]
    }
   }
  ],
  "parameters": {
   "f1_att": [
    "Attack 1",
    "Attack 1",
    0
   ],
   "f1_band": [
    "Band 1",
    "Band 1",
    0
   ],
   "f1_rel": [
    "Release 1",
    "Release 1",
    0
   ],
   "f1_xo": [
    "Crossover 1",
    "Crossover 1",
    0
   ],
   "f2_att": [
    "Attack 2",
    "Attack 2",
    0
   ],
   "f2_band": [
    "Band 2",
    "Band 2",
    0
   ],
   "f2_rel": [
    "Release 2",
    "Release 2",
    0
   ],
   "f2_xo": [
    "Crossover 2",
    "Crossover 2",
    0
   ],
   "parameterbanks": {
    "0": {
     "index": 0,
     "name": "",
     "parameters": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ],
     "buttons": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ]
    }
   },
   "inherited_shortname": 1,
   "f3_att": [
    "Attack 3",
    "Attack 3",
    0
   ],
   "f3_rel": [
    "Release 3",
    "Release 3",
    0
   ]
  },
  "autosave": 0
 }
}