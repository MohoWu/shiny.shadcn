var path = require("path");

module.exports = {
  entry: [
    path.join(__dirname, "srcjs", "action_button.jsx"),
    path.join(__dirname, "srcjs", "checkbox.jsx"),
  ],
  output: {
    path: path.join(__dirname, "inst/www/shiny.shadcn"),
    filename: "shadcn_bundle.js"
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        loader: "babel-loader",
        options: {
          presets: ["@babel/preset-env", "@babel/preset-react"],
        },
      },
      // For CSS so that import "path/style.css"; works
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"],
      },
      // {
      //   test: /\.mjs$/,
      //   include: /node_modules/,
      //   type: "javascript/auto",
      // }
    ]
  },
  externals: {
    react: "window.React",
    "react-dom": "window.ReactDOM",
    reactR: "window.reactR",
  },
  stats: {
    colors: true,
  },
  devtool: "source-map",
  resolve: {
    alias: {"@": path.resolve(__dirname, "")},
    extensions: ["*", ".mjs", ".js", ".json", ".jsx"],
  },
  mode: 'production',
  // for reactR to detect webpack
  // plugins: [
  //   new webpack.DefinePlugin({
  //     'process.env.WEBPACK': JSON.stringify(true),
  //   }),
  // ]
};
