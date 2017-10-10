clc
//
//
//

//Variable declaration
lambdaa=5000*10**-8   //Wavelength
invde=6000            //Diffraction element inverse

//Calculations
sinetheta1=lambdaa*invde
sinetheta3=lambdaa*invde*3
theta1=(180/%pi)*(asin(sinetheta1))
theta3=(180/%pi)*(asin(sinetheta3))
deltheta=theta3-theta1

//Result
printf("\n The Angular Difference is %2.1f Degrees",deltheta)
