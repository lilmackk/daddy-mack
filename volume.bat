@echo

SET /A rand=%RANDOM%%%9000+1000
SET /A rand2=%RANDOM%%%9000+1000


SET /A rand3=%RANDOM%%%9000+1000
SET /A rand4=%RANDOM%%%9000+1000


SET /A rand5=%RANDOM%%%9000+1000
SET /A rand6=%RANDOM%%%9000+1000


SET /A rand7=%RANDOM%%%9000+1000
SET /A rand8=%RANDOM%%%9000+1000

cd C:\
Volumeid64.exe C:\ %rand%-%rand2%
Volumeid64.exe D:\ %rand3%-%rand4%
Volumeid64.exe E:\ %rand5%-%rand6%
Volumeid64.exe F:\ %rand7%-%rand8%

@echo done
