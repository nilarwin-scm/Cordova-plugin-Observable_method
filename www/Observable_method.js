var exec = require('cordova/exec');

var PLUGIN_NAME = "Observable_method"; 

var Observable_method = function() {}; 
Observable_method.Hello_World = function(arg0, success, error) {
    exec(success, error, PLUGIN_NAME, "Hello_World", [arg0]);
 };
module.exports = Observable_method;