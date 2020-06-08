var exec = require('cordova/exec');

var PLUGIN_NAME = "Observable_method"; 

var Observable_method = function() {}; 
Observable_method.Hello_World = function(options, success, error) {
    exec(success, error, PLUGIN_NAME, "Hello_World", [options.sMessage]);
 };
module.exports = Observable_method;