{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_UP\n    in event EV_BTN_DOWN\n    var tick : integer\n    const DEL_BTN_XX_MAX = 50\n    "
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 34,
          "y": 237
        },
        "size": {
          "width": 143.03125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b795c847-d129-4d70-9faa-f71216e6b172",
        "z": 63,
        "embeds": [
          "5e7523ef-2144-4260-bf9d-a3e3379362c5"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING"
          },
          "specification": {
            "text": "entry / tick--"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b795c847-d129-4d70-9faa-f71216e6b172",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22.125,
              "dy": 8.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "b795c847-d129-4d70-9faa-f71216e6b172",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16.125,
              "dy": 38.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick > 0]"
              }
            },
            "position": {
              "distance": 0.4719340252425118,
              "offset": 33.62510406948433,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5e7523ef-2144-4260-bf9d-a3e3379362c5",
        "z": 64,
        "parent": "b795c847-d129-4d70-9faa-f71216e6b172",
        "vertices": [
          {
            "x": -25,
            "y": 202
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 149.5,
          "y": 10
        },
        "size": {
          "width": 243.84375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 73,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_BUTTON_UP"
          },
          "specification": {
            "text": "entry / tick = DEL_BTN_XX_MAX"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b795c847-d129-4d70-9faa-f71216e6b172"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4.2109375,
              "dy": 27,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.621892373208694,
              "offset": -86,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "089b5f17-a0ab-48c4-9cbb-ae4eaf1e47a9",
        "z": 74,
        "vertices": [
          {
            "x": 75,
            "y": 58
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 445,
          "y": 148
        },
        "size": {
          "width": 135.828125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 76,
        "embeds": [
          "075db3fa-db1c-40c8-aac2-fd477b7afe93"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING"
          },
          "specification": {
            "text": "entry / tick--"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 240.5,
              "dy": 21,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.4724190915432541,
              "offset": 36.80000070679994,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3e041492-2a9b-487d-9208-422ad039e14f",
        "z": 77,
        "vertices": [
          {
            "x": 520,
            "y": 68
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 82.7734375,
              "dy": 64.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 93.7734375,
              "dy": 29.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick > 0]"
              }
            },
            "position": {
              "distance": 0.5490067503479058,
              "offset": 29.407795883861485,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "075db3fa-db1c-40c8-aac2-fd477b7afe93",
        "z": 77,
        "vertices": [
          {
            "x": 578.7734375,
            "y": 241
          }
        ],
        "parent": "db372094-acc6-467b-b44d-495606208445",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 168,
          "y": 397
        },
        "size": {
          "width": 243.84375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7a84f0da-87ce-4405-a2cf-11fd887330a4",
        "z": 78,
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN"
          },
          "specification": {
            "text": "entry / tick = DEL_BTN_XX_MAX"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 57.7734375,
              "dy": 61.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7a84f0da-87ce-4405-a2cf-11fd887330a4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 94.4140625,
              "dy": 35.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.39732003724449755,
              "offset": -83.92315737714603,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0c0c9612-c7ec-47a6-8c02-d387699a24f8",
        "z": 79,
        "vertices": [
          {
            "x": 502.77,
            "y": 395
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7a84f0da-87ce-4405-a2cf-11fd887330a4"
        },
        "target": {
          "id": "b795c847-d129-4d70-9faa-f71216e6b172",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44.125,
              "dy": 40.90386962890625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP"
              }
            },
            "position": {
              "distance": 0.657525363482883,
              "offset": 34.9631360182743,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ee831f28-7ed9-4cbf-8fad-12876f782017",
        "z": 79,
        "vertices": [
          {
            "x": 189,
            "y": 277.9
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b795c847-d129-4d70-9faa-f71216e6b172"
        },
        "target": {
          "id": "7a84f0da-87ce-4405-a2cf-11fd887330a4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3,
              "dy": 31,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.35420832079523423,
              "offset": 88.40852355957031,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b36738f4-43e5-4223-8d25-506bc0081263",
        "z": 80,
        "vertices": [
          {
            "x": 77.41,
            "y": 353
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 214.5,
              "dy": 53,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8,
              "dy": 40,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN"
              }
            },
            "position": {
              "distance": 0.30879638836255074,
              "offset": 57.36517333984375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d7651357-0c97-42b4-a085-246042e097a2",
        "z": 81,
        "vertices": [
          {
            "x": 364,
            "y": 188
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 243,
          "y": -53
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 85,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 243,
          "y": -38
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 86,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 101,
              "dy": 3,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 87,
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "MyFirstStatechart",
          "statemachinePrefix": "myFirstStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}