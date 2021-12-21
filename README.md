# Grass Motion under force

## Abstract:

For our project, we will be looking into implementing the motions of grass under the act upon external forces. We aim for a realistic interactable simulation of grass and wind interaction that can be rendered under real-time. Our project is divided into 3 parts; modeling/rendering grass nodes, wind simulation, and grass dynamic simulation. I am responsible for wind generation/simulation. To create a realistic wind effect, our research paper suggested using the computational fluid dynamic system by solving the Navier-Stokes equation with a Eulerian grid-based approach. Some of the advantages listed being; higher numerical accuracy, scalable to support multiple wind sources, turbulence effect and obstacles.

## Contribution:

- Created the incompressible fluid simulation “wind field” using 3D arrays of vectors with each cell representing the speed of the wind.
- Created visualization method in order to perceive wind by adding cone mesh with change in direction/length and color to represent cell vectors.
- Added interactable GUI using [Imgui](https://eliasdaler.github.io/using-imgui-with-sfml-pt2/) for tuning wind parameters such as on/off switch for visualization, wind strength and direction. Addition to pulsing wind effect for better simulation accuracy which is similar to the real world.
- Added visuals for viewing the density state of the fluid simulation for more visual infomation and interaction satisfactions. 

## Results:
This is the results of working wind field simulation and correct expected visualizations. The greens other than the first image represents faster moving wind velocity where reddish meaning slower. They are vector representations so direction and length takes into account. The green “arrows” have genuinely longer length suggesting they are moving faster and hence our wind. 

![wField](screen_captures/texture_pot.PNG)
![wField](screen_captures/random_instanced_colors.PNG)
![wField](screen_captures/Instanced_light.PNG)
![wField](screen_captures/Box_and_texture.PNG)
![wField](screen_captures/random_instanced.PNG)
![wField](screen_captures/random_instanced2.PNG)


The balls represent the density state of the cells, where larger and the darker meaning more dense while the smaller and lighter meaning more light. As the simulation plays out, the balls can be seen as they are advecting along with the wind.

Dynamic GUI:
When in off state, no parameter settings were shown to keep a clean simple look.
When turned on, the slider bar appears and is ready for real-time interactions.

(Image left) Wind force moving left (Image right) Wind force moving straight

Density balls advecting with the wind.



## Refrence:



## Configuration:

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
