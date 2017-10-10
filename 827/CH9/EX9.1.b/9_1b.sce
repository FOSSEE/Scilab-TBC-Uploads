// CHEMISTRY FOR ENVIRONMENTAL AND ENGINEERING SCIENCE FIFTH EDITION
disp(' Chapter 9: Introduction to Water and Wastewater analysis')

//To calcluate the TCE concentration 

disp('What is the TCE concentration in g/m^3 for each of the following')
 
disp('example 9.1 b') 

disp(' An air sample at 20 degree celsius and 1 atm pressure with TCE concentration of 4 ppm')


// Since in air 4ppm equals 4mL gaseous TCE/10^6 mL air 

TCE = 4/10^6
Giventemp= 20

// here the given temperature is in degree celsius and has to be converted into kelvin in standard terms

 Actualtemp= 273+ Giventemp

// Since at standard temperature and pressure the volume is 22.4L 

disp('The answer is')

ans = (TCE*273*131.5*10^3)/( Actualtemp*22.4)

disp(ans)

//We see that the concentrations in g/m^3 are quite different for the soil and air samples, even thought the concentrations when expressed in ppm are the same.This illustrates that we must understand well the general basis for mass expressions in different media

