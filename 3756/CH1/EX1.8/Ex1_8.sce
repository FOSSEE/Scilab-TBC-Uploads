clc
//
//
//

//Variable declaration
D=1                        //Distance from screen
mu=1.5                     //refractive index of glass
a=0.5                      //distance from slit
Beta=0.0135*10**-2         //Fringe width
alpha=0.0087               //angleof prism


//Calculations
lambdaa=(Beta*2*a*(mu-1)*alpha*10**10)/D

//Result
printf("\n The Wavelength is %0.3f Angstrom",lambdaa)
