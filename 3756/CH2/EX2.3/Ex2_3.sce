clc
//
//
//

//Variable declaration
e=0.14  //width of the slit
y=1.6   //Distance of center of dark band from middle of central bright band
n=2     //no. of dark band
D=2     //Distance from the slit

//Calculations
lambdaa=((e*y)/(D*n))*10**5

//Result
printf("\n The Wavelength is %i Angstrom",lambdaa)
