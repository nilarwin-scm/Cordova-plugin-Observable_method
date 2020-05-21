var exec = require('cordova/exec');

var PLUGIN_NAME = "Observable_method"; 

var Observable_method = function() {}; 
Observable_method.Hello_World = function(onSuccess, onError) {
    exec(onSuccess, onError, PLUGIN_NAME, "Hello_World", []);
 };
module.exports = Observable_method;