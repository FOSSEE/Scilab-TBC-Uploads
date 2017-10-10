//Chapter 25: Sky Wave Propagation
//Example 25-5.1
clc;

//Variable Initialization
muf = 10e6    //Maximum usable frequency (Hz)
h = 300    //Height of reflection (km)
n = 0.9      //Maximum value of refractive index (unitless)

//Calculations
Nmax = (1 - n**2)*(muf**2)/81    //Max. Number of electrons per cubic cm
fc = 9*sqrt(Nmax)    //Critical frequency (Hz)
dskip = 2*h*sqrt((muf/fc)**2 - 1)   //Skip distance (km)


//Result
mprintf("The skip distance is %.1f km",dskip)

//An error has been made in the calculation of sqrt((muf/fc)**2 - 1)
