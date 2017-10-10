clc
//
//
//

//Variable declaration
D=1.1                       //Distance from screen
lambdaa=5900*10**-10        //Wavelength
d=0.00174                   //Fringe separation


//Calculations
Beta=(D*lambdaa*10**-1)/d

//Result
printf("\n The Fringe width observed at a distance of 1m from BP is %1.1f *10**-5 m",Beta)
