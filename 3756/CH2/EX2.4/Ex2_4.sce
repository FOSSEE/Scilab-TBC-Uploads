clc
//
//
//

//Variable declaration
lambdaa=5000*10**-8  //Wavelength
theta=30             //Angular Width

//Calculations
thetarad=(%pi/180)*(theta)
sinetheta=sin(thetarad)
e=(lambdaa)/(sinetheta)

//Result
printf("\n The Width of the slit is  %0.4f cm",e)
