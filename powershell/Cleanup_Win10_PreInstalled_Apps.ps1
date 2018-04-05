## Written by:      Tom
## Dat:             4/5/18
## Version Notes:   Updated for March 2018 Windows 10 release

Get-appxpackage -allusers *Microsoft.3dbuilder* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.3dbuilder*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Appconnector* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Appconnector*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Asphalt8Airborne* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Asphalt8Airborne*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *microsoft.windowscommunicationsapps* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*microsoft.windowscommunicationsapps*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.WindowsCamera* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.WindowsCamera*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *king.com.CandyCrushSodaSaga* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*king.com.CandyCrushSodaSaga*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.DrawboardPDF* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.DrawboardPDF*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Facebook* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Facebook*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *BethesdaSoftworks.FalloutShelter* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*BethesdaSoftworks.FalloutShelter*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *FarmVille2CountryEscape* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*FarmVille2CountryEscape*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.WindowsFeedbackHub*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.GetHelp* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.GetHelp*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Getstarted* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Getstarted*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.ZuneMusic*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *microsoft.windowscommunicationsapps* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*microsoft.windowscommunicationsapps*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.WindowsMaps*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Messaging* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Messaging*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Wallet* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Wallet*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.MicrosoftSolitaireCollection*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Todos* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Todos*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *ConnectivityStore* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*ConnectivityStore*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *MinecraftUWP* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*MinecraftUWP*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.OneConnect* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.OneConnect*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *bingfinance* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*bingfinance*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.ZuneVideo* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.ZuneVideo*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.BingNews* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.BingNews*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.MicrosoftOfficeHub*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Netflix* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Netflix*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *onenote* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*onenote*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.MSPaint* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.MSPaint*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *PandoraMediaInc* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*PandoraMediaInc*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.People* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.People*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *CommsPhone* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*CommsPhone*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *windowsphone* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*windowsphone*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Print3D* | Remove-AppxPackage

Get-appxpackage -allusers *flaregamesGmbH.RoyalRevolt2* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*flaregamesGmbH.RoyalRevolt2*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *WindowsScan* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*WindowsScan*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *AutodeskSketchBook* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*AutodeskSketchBook*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.SkypeApp* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.SkypeApp*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *bingsports* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*bingsports*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.MicrosoftStickyNotes*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Office.Sway* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Office.Sway*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.Getstarted* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Getstarted*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Twitter* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Twitter*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft3DViewer* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft3DViewer*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.WindowsSoundRecorder*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.BingWeather* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.BingWeather*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.XboxApp* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.XboxApp*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.XboxGameOverlay* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.XboxGameOverlay*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.XboxIdentityProvider*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *XboxOneSmartGlass* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*XboxOneSmartGlass*"} | remove-appxprovisionedpackage –online

Get-appxpackage -allusers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.XboxSpeechToTextOverlay*"} | remove-appxprovisionedpackage –online