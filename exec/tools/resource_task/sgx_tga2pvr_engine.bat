 @echo off
 	rem this file made by yikaiming 2012/12/13

    rem batch gammar reference
    
    rem echo %%~dpnA disk + dir + name
    rem echo %%~sA name+ext
    rem echo %%~nA name
    rem echo %%~fA abspathname
    rem echo %%~xA ext
    rem echo %%~pA dik

call ..\global_task\set_global_env.bat

for /R %GKENGINE_HOME%\engine\assets %%A in (*.tga) do (
    
    IF NOT EXIST %%~dpnA.pvr (
    	echo [convert file] %%~nxA to %%~nA.pvr
    	%GKENGINE_HOME%\tools\pvrtextool -m -fOGL8888 -yflip0 -square -silent -i %%~fA
    ) ELSE (
    	echo [file exist] %%~nA.pvr
    )

)

rem pause