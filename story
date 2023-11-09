<!DOCTYPE html>
<html lang="1122">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>美食地图</title>
  </head>
  <body>
    <!-- The StoryMap container can go anywhere on the page. Be sure to
    specify a width and height.  The width can be absolute (in pixels) or
    relative (in percentage), but the height must be an absolute value.
    Of course, you can specify width and height with CSS instead -->
    <div id="mapdiv" style="width: 100%; height: 100vh"></div>

    <!-- Your script tags should be placed before the closing body tag. -->
    <link
      rel="stylesheet"
      href="https://cdn.knightlab.com/libs/storymapjs/latest/css/storymap.css"
    />
    <script
      type="text/javascript"
      src="https://cdn.knightlab.com/libs/storymapjs/latest/js/storymap-min.js"
    ></script>

    <script>
      // storymap_data can be an URL or a Javascript object
      let storymap_data = "data.json";

      // certain settings must be passed within a separate options object
      let storymap_options = {};

      let storymap = new KLStoryMap.StoryMap(
        "mapdiv",
        storymap_data,
        storymap_options
      );
      window.onresize = function (event) {
        storymap.updateDisplay(); // this isn't automatic
      };
    </script>
  </body>
</html>
