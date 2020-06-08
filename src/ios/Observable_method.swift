@objc(Observable_method) class Observable_method : CDVPlugin {
  @objc(Hello_World:)
  func Hello_World(command: CDVInvokedUrlCommand) {
    print("count world\(command.argument(at: 0))")
    let sMessage = command.argument(at: 0) as! String
    let pluginResult:CDVPluginResult
    if sMessage != nil && sMessage.count > 0 {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: sMessage)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
  @objc(carrycolor:)
  func carrycolor(command: CDVInvokedUrlCommand) {
     print("carrycolor1")
    var returndata = ""
    var color = command.argument(at: 0) as! String
    returndata = color
    let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: returndata);
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    print("carrycolor2")
  }
}

