cd C:\Users\Matthias Kovacic\Desktop\PolyRocketMatt\Repository\maven-repo
set /P version="Version: "
call mvn install:install-file -DgroupId=com.github.polyrocketmatt -DartifactId=su -Dversion=%version% -Dfile="..\..\SpigotUtils\target\SpigotUtils.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
git add *
git commit -m "Released SpigotUtils %version%"
git pull
git push