@ECHO OFF
type nul > C:\ion.txt
Setlocal EnableDelayedExpansion
SET _RNDLength=20
SET _PwdMax=1
SET _PwdCount=1
SET _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567899876543210
SET _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9% && SET /A _Len+=9 && GOTO _LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
SET _count=0
SET _RndAlphaNum=
:_loop
SET /a _count+=1
SET _RND=%Random%
SET /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
IF !_count! LSS %_RNDLength% goto _loop
ECHO !_RndAlphaNum! >> C:\ion.txt
SET /a _PwdCount+=1
IF !_PwdCount! LSS %_PwdMax% goto _LenLoop
taskkill /f /im cmd.exe
