set /P version="Version: "
call mvn install:install-file -DgroupId=com.github.polyrocketmatt -DartifactId=KotlinBridge -Dversion=%version% -Dfile="..\..\KotlinBridge\target\KotlinBridge.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
git add *
git commit -m "Released KotlinBridge %version% (dev)"
git pull
git push