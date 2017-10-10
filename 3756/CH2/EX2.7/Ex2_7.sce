clc
//
//
//

//Variable declaration
y=0.005              //First Minima
D=1                  //Distance of screen
e=0.5*10**-2         //Slit width

//Calculations
yd=(y/D)
sinyd=(sin(yd))
lambdaa1=((e*sinyd)/4)*10**9
lambdaa2=((e*sinyd)/5)*10**9

//Result
printf("\n The Wavelengths are %4.0f  Angstrom & %4.0f   Angstrom",lambdaa1,lambdaa2)
