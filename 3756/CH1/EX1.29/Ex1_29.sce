clc
//
//
//

//Variable declaration
lambdaa=5400*10**-10  //Wavelength
n1=5
n2=15
R=100       //Radius of both rings

//Calculations
r5=sqrt((R*n1*lambdaa)/2)
r15=sqrt((R*n2*lambdaa)/2)
d=(r15)-(r5)


//Result
printf("\n The Distance between 5th and 15th Dark ring is %0.3f m",d)
