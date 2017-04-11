var express = require('express');
var path = require('path');
var compression = require('compression');
var port = process.env.PORT || 3000;
var app = express();

app.use(compression());
app.use(express.static(path.join(__dirname, 'public')));

app.get('*', function(request, response) {
	response.sendFile(path.join(__dirname, 'public', 'index.html'))
});

var server = app.listen(port, '0.0.0.0', function() {
	console.log('Listening on port %d', server.address().port);
});