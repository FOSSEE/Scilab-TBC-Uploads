clc();
clear;
//To calculate the wedge angle
lambda=500*10^-9;                      //wavelength
x=0.07;                                //observed band width
mew=1;                                  //refractive index
teta=(asind(lambda/(2*mew*x)))*10^4     //wedge angle
printf("The wedge angle is %f",teta);