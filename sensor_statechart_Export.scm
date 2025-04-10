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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    const DEL_BTN_XX_MAX : integer = 50\n    var tick : integer = DEL_BTN_XX_MAX\n\ninterface: \n    in event EV_BTN_XX_UP\n    in event EV_BTN_XX_DOWN"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 24.96875,
          "y": 185
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
        "z": 99,
        "embeds": [
          "5e7523ef-2144-4260-bf9d-a3e3379362c5"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_RISING"
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
                "text": "[tick > 0] / tick--"
              }
            },
            "position": {
              "distance": 0.6281005163049285,
              "offset": 75.36124801635742,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 100,
        "parent": "b795c847-d129-4d70-9faa-f71216e6b172",
        "vertices": [
          {
            "x": -25.03125,
            "y": 155
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 443,
          "y": 184.8046875
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
        "z": 101,
        "embeds": [
          "075db3fa-db1c-40c8-aac2-fd477b7afe93"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_FALLING"
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
              "dx": 125,
              "dy": 50,
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
                "text": "[tick > 0] / tick--"
              }
            },
            "position": {
              "distance": 0.615251442267856,
              "offset": 81.40777587890625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 102,
        "vertices": [
          {
            "x": 633,
            "y": 281
          }
        ],
        "parent": "db372094-acc6-467b-b44d-495606208445",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 168,
          "y": 375
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
        "z": 107,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_DOWN"
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
              "dx": 141.03125,
              "dy": 14,
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
              "dx": 24,
              "dy": 4,
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
                "text": "EV_BTN_XX_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.6771747239924674,
              "offset": -88.59149169921875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 108,
        "vertices": [
          {
            "x": 192,
            "y": 199
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7a84f0da-87ce-4405-a2cf-11fd887330a4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1,
              "dy": 47,
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
              "dx": 49.03125,
              "dy": 55,
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
                "text": "EV_BTN_XX_UP / tick = DEL_BTN_XX_MAX"
              }
            },
            "position": {
              "distance": 0.3474443742605923,
              "offset": -36.24260312930898,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 108,
        "vertices": [
          {
            "x": 74,
            "y": 412
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
              "dx": 76,
              "dy": 56,
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
                "text": "EV_BTN_XX_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.5970067066438751,
              "offset": -52.93776061093514,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 108,
        "vertices": [
          {
            "x": 519,
            "y": 372
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 168,
          "y": 24
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
        "z": 109,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_BTN_XX_UP"
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
                "text": "EV_BTN_XX_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.819377908107675,
              "offset": -94.9672973980416,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 110,
        "vertices": [
          {
            "x": 408.5,
            "y": 206
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
                "text": "EV_BTN_XX_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.5825904337980755,
              "offset": -47.65843276694302,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 110,
        "vertices": [
          {
            "x": 75,
            "y": 58
          }
        ],
        "attrs": {
          "line": {
            "strokeWidth": 4
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 232,
              "dy": 17.903867721557617,
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
              "dx": 75,
              "dy": 0.1953125,
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
                "text": "EV_BTN_XX_DOWN / tick = DEL_BTN_XX_MAX"
              }
            },
            "position": {
              "distance": 0.4362547722848479,
              "offset": -44.13317299676967,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "z": 110,
        "vertices": [
          {
            "x": 518,
            "y": 64
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 282.421875,
          "y": -32
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
        "z": 114,
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
          "x": 282.421875,
          "y": -17
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 115,
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
              "dx": 121,
              "dy": 8.903867721557617,
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
              "root": {
                "opacity": 1
              },
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
        "z": 116,
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
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
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