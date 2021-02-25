Set WshNetwork = CreateObject("WScript.Network")
WshNetwork.AddWindowsPrinterConnection "\\sklad1\tscte210"
WshNetwork.SetDefaultPrinter "\\sklad1\tscte210"
