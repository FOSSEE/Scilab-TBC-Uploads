clc
//
//
//

//Variable declaration
D=0.8                       //Distance from screen
lambdaa=5890*10**-10        //Wavelength
Beta=9.424*10**-4           //Fringe Width


//Calculations
d=(D*lambdaa*10**-2)/Beta

//Result
printf("\n The position of the 10th fringe is %e *10**-4 m",d)
