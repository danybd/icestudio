{
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
        "type": "basic.code",
        "data": {
          "code": "// Driver high\n\nassign v = 1'b1;",
          "ports": {
            "in": [],
            "out": [
              "v"
            ]
          }
        },
        "position": {
          "x": 100,
          "y": 100
        }
      },
      {
        "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
        "type": "basic.output",
        "data": {
          "label": "o",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 633,
          "y": 165
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
          "port": "out7"
        },
        "target": {
          "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
          "port": "in"
        }
      }
    ]
  },
  "deps": {
    "logic.not": {
      "graph": {
        "blocks": [
          {
            "id": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
            "type": "basic.code",
            "data": {
              "code": "// NOT logic gate\n\nassign c = ! a;",
              "ports": {
                "in": [
                  "a"
                ],
                "out": [
                  "c"
                ]
              }
            },
            "position": {
              "x": 240,
              "y": 80
            }
          },
          {
            "id": "ec18fe03-b702-43d3-afb2-156848805175",
            "type": "basic.input",
            "data": {
              "label": "x"
            },
            "position": {
              "x": 22,
              "y": 145
            }
          },
          {
            "id": "2b6984aa-9351-4d64-b4f8-48ef983cc738",
            "type": "basic.output",
            "data": {
              "label": "z"
            },
            "position": {
              "x": 765,
              "y": 145
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "ec18fe03-b702-43d3-afb2-156848805175",
              "port": "out"
            },
            "target": {
              "block": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
              "port": "a"
            }
          },
          {
            "source": {
              "block": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
              "port": "c"
            },
            "target": {
              "block": "2b6984aa-9351-4d64-b4f8-48ef983cc738",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    }
  }
}