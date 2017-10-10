// CHEMISTRY FOR ENVIRONMENTAL AND ENGINEERING SCIENCE FIFTH EDITION
disp(' Chapter 9: Introduction to Water and Wastewater analysis')

//To calcluate the TCE concentration 

disp('What is the TCE concentration in g/m^3 for each of the following')

disp('example 9.1 a')
 

disp( 'A soil having a density of of 2 g/cm^3 with TCE concentration of 4 ppm')



// Since density is given in cm^3 it has to be converted into m^3 

density=2*1000

//Since 1ppm= 1/10^6 g, we get

ppm = 4/10^6

disp(' TCE concentration in g/cm^3 is')

TCE= ppm*density

disp(TCE)

