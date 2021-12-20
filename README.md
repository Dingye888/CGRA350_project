# Grass motion under force

If you want to add files, create the cpp and hpp inside the work/src folder and add them in the CmakeList file before building.

After cloneing, create an empty "build" folder inside the "CGRA350T12019_Framework" directory and use cmake to make the soulution.

From inside the build folder..

For Windows
cmake -G "Visual Studio XX" ..\work

or

cmake -G "Visual Studio XX Win64" ..\work


After opening the solution (`.sln`) you will need to set some additional variables before running.
Solution Explorer > base > [right click] > Set as StartUp Project
Solution Explorer > base > [right click] > Properties > Configuration Properties > Debugging
Select `All Configurations` from the configuration drop-down
Set `Working Directory` to `$(SolutionDir)../work`
Set `Command Arguments` to whatever is required by your program
