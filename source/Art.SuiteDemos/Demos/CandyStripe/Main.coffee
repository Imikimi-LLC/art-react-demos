{
  defineModule
  log
  Component
  Element
  RectangleElement
  TextElement
  rgbColor
} = require 'art-suite'

defineModule module, class CandyStripe extends Component

  render: ->
    Element null,

      RectangleElement color: "white"

      RectangleElement
        size: ww:1, h: 20, w:-20
        radius: 50
        axis: .5
        location: ps: .5
        to: (ps) -> ps.max()
        animators:
          colors:
            animate: ({animationPos, options:{color1, color2}}) ->
              out =
                0: endsColor = rgbColor(color1).interpolate color2, animationPos
                1: endsColor
              out[animationPos] = color1
              out[animationPos + .0001] = color2
              out
            period: 3
            color1: "#fd0"
            color2: "#ff0"

