@objc(Observable_method) class Observable_method : CDVPlugin {
  @objc(Hello_World:) 
  func Hello_World(command: CDVInvokedUrlCommand) { 
    var data = command.argument(at: 0)as! String
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin Failed");
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: data);
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
}