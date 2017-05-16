module.exports = {
  entry: __dirname+'/src/index.js',
  output: {
    path: __dirname+'/public',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        loader: 'babel-loader',
        query: {
          presets: ['react', 'es2015']
        },
        test: /\.js$/,
        exclude: /node_modules/
      }
    ]
  }
};
