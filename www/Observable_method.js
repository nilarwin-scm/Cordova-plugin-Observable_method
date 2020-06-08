var exec = require('cordova/exec');

var PLUGIN_NAME = "Observable_method"; 

var Observable_method = function() {}; 
Observable_method.Hello_World = function(options, success, error) {
    exec(success, error, PLUGIN_NAME, "Hello_World", [options.sMessage]);
 };
 Observable_method.carrycolor = function(color, onSuccess, onError) {
    //if error is null then replace with empty function to silence warnings
    if(!error){
       error = function(){};
     }
    
     if (color === null) {
       error("Null msg isn't supported");
       return;
     }
       exec(onSuccess, onError, PLUGIN_NAME, "carrycolor", [color]);
     };
module.exports = Observable_method;