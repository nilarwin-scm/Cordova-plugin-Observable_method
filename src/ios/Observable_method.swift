@objc(Observable_method) class Observable_method : CDVPlugin {
  @objc(Hello_World:)
  func Hello_World(command: CDVInvokedUrlCommand) {
    print("count world\(command.argument(at: 0))")
    let text = command.argument(at: 0) as! String
    let pluginResult:CDVPluginResult
    if text != nil && text.count > 0 {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: text)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
}

