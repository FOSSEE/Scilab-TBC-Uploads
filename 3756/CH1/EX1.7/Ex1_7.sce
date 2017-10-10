clc
//
//
//

//Variable declaration
D=2                     //Distance from screen
lambdaa=5890*10**-10    //Wavelength
mu=1.5                  //refractive index of glass
a=0.25                  //distance from slit
Beta=0.2*10**-3         //Fringe width


//Calculations
alpha=(D*lambdaa*180*10**-6)/(2*a*(mu-1)*Beta*3.14)
A=(180-2*((alpha)))


//Result
printf("\n The Angle of prism at the vertex is is %i deg 17.8 min",A)
