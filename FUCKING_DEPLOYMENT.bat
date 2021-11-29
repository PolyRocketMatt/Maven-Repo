set /P version="Version: "
call mvn install:install-file -DgroupId=com.github.polyrocketmatt -DartifactId=Peak -Dversion=%version% -Dfile="..\..\Peak\target\peak.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
git add *
git commit -m "released dev build %version%"
git pull
git push