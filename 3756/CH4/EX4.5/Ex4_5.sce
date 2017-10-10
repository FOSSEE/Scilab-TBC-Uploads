clc
//
//
//

//Variable declaration
lambdaa=5*10**-5        //Wavelength
theta=32                //Angle subtended by the sun at the slit

//Calculations
l=((lambdaa*60*180)/(theta*3.14))

//Result
printf("\n The transverse coherence length is %1.3f cm",l)
