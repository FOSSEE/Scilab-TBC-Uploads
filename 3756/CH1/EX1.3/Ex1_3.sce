clc
//
//
//

//Variable declaration
D=1                     //Distance from screen
Beta=0.31*10**-3        //Fringe Width
d=1.9*10**-3            //Slit separation


//Calculations
lambdaa=(Beta*d*10**6)/D

//Result
printf("\n The Wavelength lamda=%0.4f *10**-6 m",lambdaa)
