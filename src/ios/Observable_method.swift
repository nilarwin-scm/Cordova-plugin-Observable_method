@objc(Observable_method) class Observable_method : CDVPlugin {
  @objc(Hello_World:) 
  func Hello_World(command: CDVInvokedUrlCommand) { 
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin Failed");
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "The plugin succeeded");
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
}