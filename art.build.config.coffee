module.exports =
  webpack:
    common:
      output: path: "#{__dirname}/docs"
    targets:
      Demos: {}
      HelloWorld: {}

  package:
    description: "See what ArtSuite can do."
    dependencies:
      "art-suite":            "git://github.com/imikimi/art-suite"
      "art-color-extractor":  "git://github.com/imikimi/art-color-extractor"