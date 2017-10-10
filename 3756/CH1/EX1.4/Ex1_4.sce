clc
//
//
//

//Variable declaration
D=0.04                     //Distance from screen
lambdaa=5890*10**-10        //Wavelength
d=2*10**-3                 //Slit separation
n=10                       //No. of fringes


//Calculations
x10=(n*D*lambdaa*10**-2)/d

//Result
printf("\n The position of the 10th fringe is %0.3f *10**-4 m",x10)
