cd C:\Users\Matthias Kovacic\Desktop\PolyRocketMatt\Repository\maven-repo
set /P version="Version: "
call mvn install:install-file -DgroupId=com.github.polyrocketmatt -DartifactId=ru -Dversion=%version% -Dfile="..\..\ReflectionUtils\target\ReflectionUtils.jar" -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true
git add *
git commit -m "Released ReflectionUtils %version%"
git pull
git push