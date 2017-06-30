@echo off
cls 
setlocal ENABLEDELAYEDEXPANSION
color 0b

:power
cls 
title Files Protection Tool 
echo ******************************************************************************* 
echo.   
echo                             Files Protection Tool                    BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo.
echo.  本工具通过修改文件后缀从而达到防止病毒加密文件，保护您的文件安全。
echo.
echo.  # 输入 1 进入单文件保护模式  (推荐)
echo.
echo.  # 输入 2 进入全文件保护模式  (不建议选择)
echo.
echo.  # 输入 3 进入单文件保护模式 PRO (需要输入密钥)
echo.
set /p select=请输入数字并按回车键:

If "%select%"=="1" goto menu
If "%select%"=="2" goto allfiles
If "%select%"=="3" goto onepro
goto power

:onepro
title Files Protection Tool (PRO)
cls 
echo ******************************************************************************* 
echo.   
echo                         Files Protection Tool (PRO)                  BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo.
echo.  本工具通过修改文件后缀从而达到防止病毒加密文件，保护您的文件安全。
echo.
echo.  PRO 版需要您输入正确的密钥后才能使用。
echo.
echo.  #您没有密钥?
echo.
echo.  目前您可以免费获得密钥，您可以发送邮件至: fifcom.cn@gmail.com
echo.  邮件主题: FPT PRO KEY
echo.  邮件内容: FPT user: %username%.
echo.
echo.  开发者会在 72 小时内进行回复。(发送其他内容将无法收到密钥。)
echo.
set /p key=请输入密钥:

If \"%key%\"==\"dd808914\" goto pro
goto onepro

:pro
cls 
set a=PRO
echo ******************************************************************************* 
echo.   
echo                         Files Protection Tool (PRO)                  BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo.
echo.  本工具通过修改文件后缀从而达到防止病毒加密文件，保护您的文件安全。
echo.
echo.  目前支持保护除 .exe .dll 的所有文件
echo.
echo.  # 如何解除文件保护?
echo.
echo.  请双击运行 @FPT[被保护的文件名]@.bat 
echo.
echo.  # @FPT[被保护的文件名]@.bat 被病毒加密?
echo.
echo.  请去掉被保护文件后缀 .FPT [如: 1.txt.FPT 修改为 1.txt] 去掉后文件恢复正常。
echo.
set /p file=请输入需要加密的文件名后按回车键: 

echo %file%|findstr /i "\.exe$">nul && goto err
echo %file%|findstr /i "\.dll$">nul && goto err 
goto go
:menu
cls 
title Files Protection Tool (单文件版)
echo ******************************************************************************* 
echo.   
echo                       Files Protection Tool (单文件版)               BY  FIFCOM  
echo.
echo ******************************************************************************* 
echo.
echo.  本工具通过修改文件后缀从而达到防止病毒加密文件，保护您的文件安全。
echo.
echo.  现支持以下格式:(主要针对Wannacry勒索病毒)
echo.
echo. .doc, .docx, .xls, .xlsx, .ppt, .pptx, .pst, .ost, .msg, .eml, .vsd, .vsdx, 
echo. .txt, .csv, .rtf, .123, .wks, .wk1, .pdf, .dwg, .onetoc2, .snt, .jpeg, .jpg,
echo. .docb, .docm, .dot, .dotm, .dotx, .xlsm, .xlsb, .xlw, .xlt, .xlm, .xlc, .xltx,
echo. .xltm, .pptm, .pot, .pps, .ppsm, .ppsx, .ppam, .potx, .potm, .edb, .hwp, .602,
echo. .sxi, .sti, .sldx, .sldm, .sldm, .vdi, .vmdk, .vmx, .gpg, .aes, .ARC, .PAQ, 
echo..bz2, .tbk, .bak, .tar, .tgz, .gz, .7z, .rar, .zip, .backup, .iso, .vcd, .bmp,
echo. .png, .gif, .raw, .cgm, .tif, .tiff, .nef, .psd, .ai, .svg, .djvu, .m4u, .m3u,
echo. .mid, .wma, .flv, .3g2, .mkv, .3gp, .mp4, .mov, .avi, .asf, .mpeg, .vob, .mpg,
echo .wmv, .fla, .swf, .wav, .mp3, .sh, .class, .jar, .java, .rb, .asp, .php, .jsp,
echo .brd, .sch, .dch, .dip, .pl, .vb, .vbs, .ps1, .bat, .cmd, .js, .asm, .h, .pas,
echo. .cpp, .c, .cs, .suo, .sln, .ldf, .mdf, .ibd, .myi, .myd, .frm, .odb, .dbf, .db,
echo. .mdb, .accdb, .sql, .sqlitedb, .sqlite3, .asc, .lay6, .lay, .mml, .sxm, .otg,
echo. .odg, .uop, .std, .sxd, .otp, .odp, .wb2, .slk, .dif, .stc, .sxc, .ots, .ods,
echo. .3dm, .max, .3ds, .uot, .stw, .sxw, .ott, .odt, .pem, .p12, .csr, .crt, .key,
echo. .pfx, .der
echo.
echo.  注:本工具不会对您的文件内容进行任何的修改，请放心使用。
echo.  按任意键继续...
pause>nul
goto start

:start
cls 
echo ******************************************************************************* 
echo.   
echo                       Files Protection Tool (单文件版)               BY  FIFCOM  
echo.
echo ******************************************************************************* 
echo.
echo.  本工具通过修改文件后缀从而达到防止病毒加密文件，保护您的文件安全。
echo.
echo.  # 如何解除文件保护?
echo.
echo.  请双击运行 @FPT[被保护的文件名]@.bat 
echo.
echo.  # @FPT[被保护的文件名]@.bat 被病毒加密?
echo.
echo.  请去掉被保护文件后缀 .FPT [如: 1.txt.FPT 修改为 1.txt] 去掉后文件恢复正常。
echo.
echo.
set /p file=请输入需要加密的文件名后按回车键: 
cls
echo ******************************************************************************* 
echo.   
echo                       Files Protection Tool (单文件版)               BY  FIFCOM 
echo.
echo *******************************************************************************  
echo. 
echo.                                  请稍等... 
echo.                               正在搜索文件...
echo %file%|findstr /i "\.doc$">nul && set format=8641fd64&& goto go 
echo %file%|findstr /i "\.bat$">nul && set format=9f9c299f&& goto go 
echo %file%|findstr /i "\.cmd$">nul && set format=2f5c1cc0&& goto go 
echo %file%|findstr /i "\.docx$">nul && set format=c685f23f&& goto go 
echo %file%|findstr /i "\.xls$">nul && set format=a5e7e4d7&& goto go 
echo %file%|findstr /i "\.xlsx$">nul && set format=94ceb610&& goto go 
echo %file%|findstr /i "\.jpeg$">nul && set format=ea72cb32&& goto go 
echo %file%|findstr /i "\.jpg$">nul && set format=46e81ae9&& goto go 
echo %file%|findstr /i "\.ppt$">nul && set format=d3e77d91&& goto go 
echo %file%|findstr /i "\.pptx$">nul && set format=b07522c&& goto go 
echo %file%|findstr /i "\.flv$">nul && set format=c3359e22&& goto go 
echo %file%|findstr /i "\.mkv$">nul && set format=8021e704&& goto go 
echo %file%|findstr /i "\.3g2$">nul && set format=3b072e3b&& goto go 
echo %file%|findstr /i "\.3gp$">nul && set format=a3d50e87&& goto go 
echo %file%|findstr /i "\.mp4$">nul && set format=b1c50c22&& goto go 
echo %file%|findstr /i "\.mov$">nul && set format=e44d2200&& goto go 
echo %file%|findstr /i "\.avi$">nul && set format=fb5f7f89&& goto go 
echo %file%|findstr /i "\.asf$">nul && set format=1697965d&& goto go 
echo %file%|findstr /i "\.mpeg$">nul && set format=77a5f38b&& goto go 
echo %file%|findstr /i "\.vob$">nul && set format=eee4baec&& goto go 
echo %file%|findstr /i "\.mpg$">nul && set format=43a70c6c&& goto go
echo %file%|findstr /i "\.wmv$">nul && set format=c7ca6624&& goto go 
echo %file%|findstr /i "\.fla$">nul && set format=40e61be5&& goto go 
echo %file%|findstr /i "\.swf$">nul && set format=6d592447&& goto go 
echo %file%|findstr /i "\.pst$">nul && set format=f8ca2e52&& goto go 
echo %file%|findstr /i "\.ost$">nul && set format=efb0ca1f&& goto go 
echo %file%|findstr /i "\.msg$">nul && set format=688a5faf&& goto go 
echo %file%|findstr /i "\.eml$">nul && set format=250ae840&& goto go 
echo %file%|findstr /i "\.vsd$">nul && set format=e1f04284&& goto go 
echo %file%|findstr /i "\.vsdx$">nul && set format=66e8a1f8&& goto go 
echo %file%|findstr /i "\.txt$">nul && set format=1c375f45&& goto go 
echo %file%|findstr /i "\.csv$">nul && set format=8a45257&& goto go 
echo %file%|findstr /i "\.tar$">nul && set format=6e545368&& goto go 
echo %file%|findstr /i "\.tgz$">nul && set format=36d57cdc&& goto go 
echo %file%|findstr /i "\.gz$">nul && set format=dbb577bd&& goto go 
echo %file%|findstr /i "\.7z$">nul && set format=610e2ae9&& goto go 
echo %file%|findstr /i "\.rar$">nul && set format=6ad92fda&& goto go 
echo %file%|findstr /i "\.zip$">nul && set format=421d9546&& goto go 
echo %file%|findstr /i "\.backup$">nul && set format=3ff0d1ac&& goto go 
echo %file%|findstr /i "\.iso$">nul && set format=61587f41&& goto go 
echo %file%|findstr /i "\.vcd$">nul && set format=ab3250d5&& goto go 
echo %file%|findstr /i "\.bmp$">nul && set format=3444a28a&& goto go
echo %file%|findstr /i "\.png$">nul && set format=83180390&& goto go 
echo %file%|findstr /i "\.gif$">nul && set format=a2371034&& goto go 
echo %file%|findstr /i "\.raw$">nul && set format=1ab3db55&& goto go 
echo %file%|findstr /i "\.cgm$">nul && set format=ac6f4cee&& goto go 
echo %file%|findstr /i "\.tif$">nul && set format=bc570d1d&& goto go 
echo %file%|findstr /i "\.m4u$">nul && set format=240bf725&& goto go 
echo %file%|findstr /i "\.m3u$">nul && set format=6b4a61e2&& goto go
echo %file%|findstr /i "\.mid$">nul && set format=41aef4ce&& goto go 
echo %file%|findstr /i "\.wma$">nul && set format=4419e3e3&& goto go 
echo %file%|findstr /i "\.tiff$">nul && set format=15691034&& goto go 
echo %file%|findstr /i "\.rtf$">nul && set format=47b61db3&& goto go 
echo %file%|findstr /i "\.123$">nul && set format=884863d2&& goto go 
echo %file%|findstr /i "\.wks$">nul && set format=e1fa352d&& goto go 
echo %file%|findstr /i "\.wkl$">nul && set format=6cf238d8&& goto go 
echo %file%|findstr /i "\.pdf$">nul && set format=ef0db8c&& goto go 
echo %file%|findstr /i "\.dwg$">nul && set format=337a124&& goto go 
echo %file%|findstr /i "\.onetoc2$">nul && set format=a26fa757&& goto go 
echo %file%|findstr /i "\.snt$">nul && set format=5e0fc17&& goto go 
echo %file%|findstr /i "\.docb$">nul && set format=3be70b45&& goto go
echo %file%|findstr /i "\.docm$">nul && set format=ab5816d4&& goto go
echo %file%|findstr /i "\.dot$">nul && set format=59278a3&& goto go 
echo %file%|findstr /i "\.dotm$">nul && set format=aedb9242&& goto go 
echo %file%|findstr /i "\.dotx$">nul && set format=c30676a9&& goto go 
echo %file%|findstr /i "\.xlsm$">nul && set format=f91352fb&& goto go 
echo %file%|findstr /i "\.xlsb$">nul && set format=69ac4f6a&& goto go 
echo %file%|findstr /i "\.xlw$">nul && set format=a28a20ce&& goto go 
echo %file%|findstr /i "\.xlt$">nul && set format=3b837174&& goto go 
echo %file%|findstr /i "\.xlm$">nul && set format=5fe8d9b4&& goto go 
echo %file%|findstr /i "\.xlc$">nul && set format=b850f4b3&& goto go 
echo %file%|findstr /i "\.xltx$">nul && set format=db8f20d7&& goto go
echo %file%|findstr /i "\.xltm$">nul && set format=b652c43c&& goto go 
echo %file%|findstr /i "\.pptm$">nul && set format=66dab6c7&& goto go 
echo %file%|findstr /i "\.pot$">nul && set format=1ebd730f&& goto go 
echo %file%|findstr /i "\.pps$">nul && set format=4d83e832&& goto go 
echo %file%|findstr /i "\.ppsm$">nul && set format=299b2000&& goto go 
echo %file%|findstr /i "\.ppsx$">nul && set format=4446c4eb&& goto go 
echo %file%|findstr /i "\.ppam$">nul && set format=516f50d3&& goto go 
echo %file%|findstr /i "\.potx$">nul && set format=1c7db661&& goto go 
echo %file%|findstr /i "\.potm$">nul && set format=71a0528a&& goto go 
echo %file%|findstr /i "\.edb$">nul && set format=13707e0e&& goto go 
echo %file%|findstr /i "\.hwp$">nul && set format=89fedd87&& goto go 
echo %file%|findstr /i "\.602$">nul && set format=c8362743&& goto go
echo %file%|findstr /i "\.sxi$">nul && set format=7a7e2519&& goto go 
echo %file%|findstr /i "\.sti$">nul && set format=d6cb6a15&& goto go 
echo %file%|findstr /i "\.sldx.$">nul && set format=464cb587&& goto go 
echo %file%|findstr /i "\.sldm.$">nul && set format=2b91516c&& goto go 
echo %file%|findstr /i "\.vdi$">nul && set format=9ac2baaf&& goto go 
echo %file%|findstr /i "\.vmdk$">nul && set format=f4ee6e5c&& goto go 
echo %file%|findstr /i "\.vmx$">nul && set format=21b02114&& goto go 
echo %file%|findstr /i "\.gpg$">nul && set format=4e3089ba&& goto go 
echo %file%|findstr /i "\.aes$">nul && set format=67d2c761&& goto go 
echo %file%|findstr /i "\.ARC$">nul && set format=e9411119&& goto go 
echo %file%|findstr /i "\.PAQ$">nul && set format=66f3e884&& goto go
echo %file%|findstr /i "\.bz2$">nul && set format=a91506a0&& goto go 
echo %file%|findstr /i "\.tbk$">nul && set format=2112a86b&& goto go 
echo %file%|findstr /i "\.bak$">nul && set format=1294246a&& goto go 
echo %file%|findstr /i "\.nef$">nul && set format=15364b7&& goto go 
echo %file%|findstr /i "\.psd$">nul && set format=e57d3e36&& goto go 
echo %file%|findstr /i "\.ai$">nul && set format=95191e5&& goto go 
echo %file%|findstr /i "\.svg$">nul && set format=3452590&& goto go 
echo %file%|findstr /i "\.djvu$">nul && set format=894aaa7d&& goto go 
echo %file%|findstr /i "\.wav$">nul && set format=6b7f2928&& goto go 
echo %file%|findstr /i "\.mp3$">nul && set format=2fa19981&& goto go 
echo %file%|findstr /i "\.sh$">nul && set format=6a2d1a0&& goto go 
echo %file%|findstr /i "\.class$">nul && set format=ed4b199f&& goto go 
echo %file%|findstr /i "\.jar$">nul && set format=78ecdd12&& goto go 
echo %file%|findstr /i "\.java$">nul && set format=7f1ae6d2&& goto go 
echo %file%|findstr /i "\.rb$">nul && set format=ff6c09ff&& goto go 
echo %file%|findstr /i "\.asp$">nul && set format=e243230c&& goto go 
echo %file%|findstr /i "\.php$">nul && set format=569121d1&& goto go 
echo %file%|findstr /i "\.jsp$">nul && set format=ee16cced&& goto go
echo %file%|findstr /i "\.brd$">nul && set format=e3c47869&& goto go 
echo %file%|findstr /i "\.sch$">nul && set format=a44fde15&& goto go 
echo %file%|findstr /i "\.dch$">nul && set format=bd266be0&& goto go 
echo %file%|findstr /i "\.dip$">nul && set format=54a51b3c&& goto go 
echo %file%|findstr /i "\.pl$">nul && set format=2ae2467a&& goto go 
echo %file%|findstr /i "\.vb$">nul && set format=9b00ccfb&& goto go 
echo %file%|findstr /i "\.vbs$">nul && set format=31fae453&& goto go 
echo %file%|findstr /i "\.ps1$">nul && set format=eba6b604&& goto go 
echo %file%|findstr /i "\.js$">nul && set format=17c7b154&& goto go 
echo %file%|findstr /i "\.asm$">nul && set format=81454fd5&& goto go 
echo %file%|findstr /i "\.h$">nul && set format=916b06e7&& goto go 
echo %file%|findstr /i "\.pas$">nul && set format=1e5acb22&& goto go
echo %file%|findstr /i "\.cpp$">nul && set format=caeaa4a1&& goto go 
echo %file%|findstr /i "\.c$">nul && set format=6b9df6f&& goto go 
echo %file%|findstr /i "\.cs$">nul && set format=c6050a1d&& goto go 
echo %file%|findstr /i "\.suo$">nul && set format=26b3fe61&& goto go 
echo %file%|findstr /i "\.sln$">nul && set format=cab467ef&& goto go 
echo %file%|findstr /i "\.ldf$">nul && set format=1bcc8198&& goto go 
echo %file%|findstr /i "\.mdf$">nul && set format=1a0eebaf&& goto go 
echo %file%|findstr /i "\.ibd$">nul && set format=a55385d9&& goto go 
echo %file%|findstr /i "\.myi$">nul && set format=75dd9a22&& goto go 
echo %file%|findstr /i "\.myd$">nul && set format=b6ce69f&& goto go 
echo %file%|findstr /i "\.frm$">nul && set format=9d116811&& goto go 
echo %file%|findstr /i "\.odb$">nul && set format=1ee7fbd8&& goto go 
echo %file%|findstr /i "\.dbf$">nul && set format=438577a6&& goto go 
echo %file%|findstr /i "\.db$">nul && set format=e3f4bc28&& goto go
echo %file%|findstr /i "\.mdb$">nul && set format=1d632fb6&& goto go 
echo %file%|findstr /i "\.accdb$">nul && set format=a35f2aa3&& goto go 
echo %file%|findstr /i "\.sql$">nul && set format=dbd66adf&& goto go 
echo %file%|findstr /i "\.sqlitedb$">nul && set format=ee9ad84f&& goto go 
echo %file%|findstr /i "\.sqlite3$">nul && set format=6edcd711&& goto go 
echo %file%|findstr /i "\.asc$">nul && set format=66fd62d2&& goto go 
echo %file%|findstr /i "\.lay6$">nul && set format=28e66196&& goto go 
echo %file%|findstr /i "\.lay$">nul && set format=ebb37828&& goto go 
echo %file%|findstr /i "\.mml$">nul && set format=2b19b9f8&& goto go 
echo %file%|findstr /i "\.sxm$">nul && set format=7d13e100&& goto go 
echo %file%|findstr /i "\.otg$">nul && set format=244f1d06&& goto go
echo %file%|findstr /i "\.odg$">nul && set format=6e8d0f57&& goto go 
echo %file%|findstr /i "\.uop$">nul && set format=1f1b75fd&& goto go 
echo %file%|findstr /i "\.std$">nul && set format=a87a16a8&& goto go 
echo %file%|findstr /i "\.sxd$">nul && set format=4cf59a4&& goto go 
echo %file%|findstr /i "\.otp$">nul && set format=a79c98c1&& goto go 
echo %file%|findstr /i "\.odp$">nul && set format=ed5e8a90&& goto go 
echo %file%|findstr /i "\.wb2$">nul && set format=31e3ff62&& goto go 
echo %file%|findstr /i "\.slk$">nul && set format=bade9360&& goto go 
echo %file%|findstr /i "\.dif$">nul && set format=a071ae6d&& goto go 
echo %file%|findstr /i "\.stc$">nul && set format=361e830b&& goto go 
echo %file%|findstr /i "\.sxc$">nul && set format=9aabcc07&& goto go 
echo %file%|findstr /i "\.ots$">nul && set format=3e95c97b&& goto go 
echo %file%|findstr /i "\.ods$">nul && set format=7457db2a&& goto go
echo %file%|findstr /i "\.3dm$">nul && set format=ebfe319d&& goto go 
echo %file%|findstr /i "\.max$">nul && set format=9d762289&& goto go 
echo %file%|findstr /i "\.3ds$">nul && set format=11f10cfe&& goto go 
echo %file%|findstr /i "\.uot$">nul && set format=1876b1e4&& goto go 
echo %file%|findstr /i "\.stw$">nul && set format=2cc45776&& goto go 
echo %file%|findstr /i "\.sxw$">nul && set format=8071187a&& goto go 
echo %file%|findstr /i "\.ott$">nul && set format=a0f15cd8&& goto go 
echo %file%|findstr /i "\.odt$">nul && set format=ea334e89&& goto go 
echo %file%|findstr /i "\.pem$">nul && set format=80393345&& goto go 
echo %file%|findstr /i "\.p12$">nul && set format=a53ae770&& goto go 
echo %file%|findstr /i "\.csr$">nul && set format=fc9964e&& goto go 
echo %file%|findstr /i "\.crt$">nul && set format=ffb1023a&& goto go 
echo %file%|findstr /i "\.key$">nul && set format=8a90aba9&& goto go 
echo %file%|findstr /i "\.pfx$">nul && set format=c6c9846d&& goto go 
echo %file%|findstr /i "\.der$">nul && set format=161e351c&& goto go 
goto err

:err
title 文件搜索时错误
cls 
echo ******************************************************************************* 
echo.   
echo                       Files Protection Tool (单文件版)               BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo. 
echo.                       未找到该文件或不支持该文件的后缀
echo.                             请按任意键重新输入。
pause>nul 
goto start 

:go
cls
move /y %file% FPT.%file%.%format%
cls
::del %file%
echo.@echo off>@FPT-Release_Protection[%file%]@.bat
echo.move /y  FPT.%file%.%format% %file%>>@FPT-Release_Protection[%file%]@.bat
echo.del @FPT-Release_protection[%file%]@.bat>>@FPT-Release_Protection[%file%]@.bat
cls
title 保护完成
echo ******************************************************************************* 
echo.
echo                       Files Protection Tool (单文件版)               BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo. 
echo.                       完成！该文件当前处于被保护状态
echo                               按任意键继续保护
pause>nul 
goto start 

:allfiles
cls
title Files Protection Tool (多文件版)
echo ******************************************************************************* 
echo.   
echo                       Files Protection Tool (多文件版)               BY  FIFCOM 
echo.
echo ******************************************************************************* 
echo. 
echo.                        不建议使用本模式进行文件保护
echo.
echo.               此模式会保护当前文件夹下的所有文件(包括本工具)
echo.
echo.                       并且 [不会] 生成批量解除保护工具
echo.
echo.            强烈建议将当前文件夹下的文件添加到压缩文件后进行保护。
echo.         -----------------------------------------------------------
echo.  你所不知道的小功能:
echo.    1.你可以将本工具放到 WannaCry 勒索病毒的文件目录下以管理员身份运行，可以瞬
echo.      间杀掉 WannaCry勒索病毒 哦! (亲测可用)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.按任意键开始保护...
pause>nul
goto runallfiles

:runallfiles
cls
title 正在操作
ren *.* *.*.FPT
title 操作完成！！！！
exit
