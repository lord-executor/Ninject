SET NoPause=true
call build-release.cmd
IF ERRORLEVEL 1 GOTO FAILED
cd ..

IF NOT EXIST .\ninject.extensions.contextpreservation GOTO ENDCTXPRESERVATION
	cd ninject.extensions.contextpreservation
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDCTXPRESERVATION

IF NOT EXIST .\ninject.extensions.namedscope GOTO ENDNSC
	cd ninject.extensions.namedscope
	del lib\Ninject\*.zip
	del lib\Ninject.Extensions.ContextPreservation\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	copy ..\ninject.extensions.contextpreservation\dist\*.zip lib\ninject.extensions.contextpreservation
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDNSC

IF NOT EXIST .\ninject.extensions.childkernel GOTO ENDCK
	cd ninject.extensions.childkernel
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDCK

IF NOT EXIST .\ninject.extensions.bbveventbroker GOTO ENDBBVEB
	cd ninject.extensions.bbveventbroker
	del lib\Ninject\*.zip
	del lib\Ninject.Extensions.ContextPreservation\*.zip
	del lib\Ninject.Extensions.NamedScope\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	copy ..\ninject.extensions.contextpreservation\dist\*.zip lib\ninject.extensions.contextpreservation
	copy ..\ninject.extensions.namedscope\dist\*.zip lib\ninject.extensions.namedscope
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDBBVEB

IF NOT EXIST .\ninject.extensions.dependencycreation GOTO ENDDC
	cd ninject.extensions.dependencycreation
	del lib\Ninject\*.zip
	del lib\Ninject.Extensions.ContextPreservation\*.zip
	del lib\Ninject.Extensions.NamedScope\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	copy ..\ninject.extensions.contextpreservation\dist\*.zip lib\ninject.extensions.contextpreservation
	copy ..\ninject.extensions.namedscope\dist\*.zip lib\ninject.extensions.namedscope
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDDC

IF NOT EXIST .\ninject.extensions.conventions GOTO ENDCONV
	cd ninject.extensions.conventions
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDCONV

IF NOT EXIST ninject.extensions.interception GOTO ENDIC
	cd ninject.extensions.interception
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDIC

IF NOT EXIST .\ninject.extensions.logging GOTO ENDLOG
	cd ninject.extensions.logging
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDLOG

IF NOT EXIST .\ninject.extensions.messagebroker GOTO ENDMB
	cd ninject.extensions.messagebroker
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDMB

IF NOT EXIST .\ninject.extensions.wf GOTO ENDWF
	cd ninject.extensions.wf
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDWF

IF NOT EXIST .\ninject.extensions.weakeventmessagebroker GOTO ENDWEAKEB
	cd ninject.extensions.weakeventmessagebroker
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDWEAKEB

IF NOT EXIST .\ninject.extensions.xml GOTO ENDXML
	cd ninject.extensions.xml
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDXML

IF NOT EXIST .\ninject.mockingkernel GOTO ENDMK
	cd ninject.mockingkernel
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDMK


IF NOT EXIST .\ninject.extensions.wcf GOTO ENDWCF
	cd ninject.extensions.wcf
	del lib\Ninject\*.zip
	del lib\Ninject.Web.Common\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	copy ..\ninject.web.common\dist\*.zip lib\ninject.web.common
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDWCF

IF NOT EXIST .\ninject.web GOTO ENDWEB
	cd ninject.web
	del lib\Ninject\*.zip
	del lib\Ninject.Web.Common\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	copy ..\ninject.web.common\dist\*.zip lib\ninject.web.common
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDWEB

:MVC
IF NOT EXIST .\ninject.web.mvc GOTO ENDMVC
	cd ninject.web.mvc
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	cd mvc1
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
	cd mvc2
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
	cd mvc3
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
	cd ..
:ENDMVC

IF NOT EXIST .\ninject.web.mvc.fluentvalidation GOTO ENDMVCFV
	cd ninject.web.mvc.fluentvalidation
	del lib\Ninject\*.zip
	copy ..\Ninject\dist\*.zip lib\Ninject
	call UnzipDependencies.cmd
	call build-release.cmd
    IF ERRORLEVEL 1 GOTO FAILED
	cd ..
:ENDMVCFV


pause
goto END

:FAILED
cd ..
pause

:END