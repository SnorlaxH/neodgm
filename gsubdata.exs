defmodule GSUBData do
  def data, do: [
    aalt: [
      {:single, "Short Middle Arrow", 2,
        [
          %{
            "hyphen" => "hyphen.marr",
            "equal" => "equal.marr",
          },
        ]},
      {:single, "Middle Arrow Joiner", 2,
        [
          %{
            "hyphen" => "hyphen.marr.joiner",
            "equal" => "equal.marr.joiner",
          }
        ]},
      {:single, "Right End of Middle Arrow", 2,
        [
          %{
            "hyphen" => "hyphen.marr.end",
            "equal" => "equal.marr.end",
          },
        ]},
      {:single, "Left Arrow Head", 2,
        [
          %{
            "hyphen" => "hyphen.larr.head",
            "equal" => "equal.larr.head",
          },
        ]},
      {:single, "Left Arrow Body", 2,
        [
          %{
            "hyphen" => "hyphen.larr.body",
            "equal" => "equal.larr.body",
          },
        ]},
      {:single, "Right Arrow Head", 2,
        [
          %{
            "hyphen" => "hyphen.rarr.head",
            "equal" => "equal.rarr.head",
          }
        ]},
      {:single, "Right Arrow Body", 2,
        [
          %{
            "hyphen" => "hyphen.rarr.body",
            "equal" => "equal.rarr.body",
          }
        ]},
    ],

    calt: [
      {:chain, "Short Middle Arrow Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["less"],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Short Middle Arrow"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["less"],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Short Middle Arrow"},
            ]
          },
        ]},
      {:chain, "Left Arrow Head Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["less"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Head"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["less"],
            look_ahead: ["equal"],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Head"},
            ]
          },
        ]},
      {:chain, "Right Arrow Head Chain 1", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.head"],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right End of Middle Arrow"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.head"],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right End of Middle Arrow"},
            ]
          },
        ]},
      {:chain, "Right Arrow Head Chain 2", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: [],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right Arrow Head"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: [],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right Arrow Head"},
            ]
          },
        ]},
      {:chain, "Left Arrow Body Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.head", "less"],
            look_ahead: ["hyphen"],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.body"],
            look_ahead: ["hyphen"],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.head", "less"],
            look_ahead: ["equal"],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.body"],
            look_ahead: ["equal"],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
        ]},
      {:chain, "Middle Arrow Joiner Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.head"],
            look_ahead: ["hyphen.rarr.head", "greater"],
            substitute: [
              %{glyph: 0, lookup: "Middle Arrow Joiner"},
            ]
          },
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.body"],
            look_ahead: ["hyphen.rarr.head", "greater"],
            substitute: [
              %{glyph: 0, lookup: "Middle Arrow Joiner"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.head"],
            look_ahead: ["equal.rarr.head", "greater"],
            substitute: [
              %{glyph: 0, lookup: "Middle Arrow Joiner"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.body"],
            look_ahead: ["equal.rarr.head", "greater"],
            substitute: [
              %{glyph: 0, lookup: "Middle Arrow Joiner"},
            ]
          },
        ]},
      {:chain, "Left Arrow Tail Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.head"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr.body"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.head"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: ["equal.larr.body"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow Body"},
            ]
          },
        ]},
    ],

    clig: [
      {:reverse_chain, "Right Arrow Body Chain", 1,
        [
          %{
            current: ["equal", "hyphen"],
            backtrack: [],
            look_ahead: [
              "equal.rarr.body",
              "equal.rarr.head",
              "hyphen.rarr.body",
              "hyphen.rarr.head",
            ],
            substitute: ["equal.rarr.body", "hyphen.rarr.body"]
          },
        ]},
    ],
  ]
end
