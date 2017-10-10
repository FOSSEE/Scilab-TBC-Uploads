clc
//
//
//

//Variable declaration
D=0.5         //Distance from Screen in cm
d=0.5        //Distance between parallel slits in cm
lambdaa=5890  //Wavelength 

//Calculations
Beta=(D*lambdaa)/(d)/10**4 // in degrees

//Result
printf("\n The Fringe width in Youngs Double Slit Experiment is Beta= %1.4f*10**-3 m", Beta)
