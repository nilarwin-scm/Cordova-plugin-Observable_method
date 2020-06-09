var exec = require('cordova/exec');

var PLUGIN_NAME = "Observable_method"; 

var Observable_method = function() {}; 
Observable_method.Hello_World = function(options, success, error) {
  if(!error){
    options.sMessage = "options.sMessage1"
   error = function(){};
  }
  if (options.sMessage == null) {
      options.sMessage= "options.sMessage null"
    error("Null msg isn't supported");
    return;
  }
    exec(success, error, PLUGIN_NAME, "Hello_World", [options.sMessage]);
 };
 Observable_method.carrycolor = function(color, onSuccess, onError) {
    exec(onSuccess, onError, PLUGIN_NAME, "carrycolor", [color]);
  };
module.exports = Observable_method;