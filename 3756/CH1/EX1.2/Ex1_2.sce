clc
//
//
//

//Variable declaration
D=2             //Distance from screen
lambdaa=5100    //Wavelength
Beta=0.02       //Fringe Width
x=10            //No. of fringes


//Calculations
d=(x*D*lambdaa)/Beta/10**6

//Result
printf("\n The Double slit separation 2d= %0.3f mu m",d)
