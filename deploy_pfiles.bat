cd C:\Users\Matthias Kovacic\Desktop\PolyRocketMatt\Repository\maven-repo
set /P version="Version: "
call mvn install:install-file -DgroupId=com.github.polyrocketmatt -DartifactId=pf -Dversion=%version% -Dfile="..\..\PolyFiles\target\PolyFiles.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
git add *
git commit -m "Released PolyFiles %version%"
git pull
git push