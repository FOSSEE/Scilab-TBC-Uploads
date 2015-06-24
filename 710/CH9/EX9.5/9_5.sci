clc();
clear;
//To calculate the shortest wavelength of X-rays produced by the machine
h=6.626*10^-34;                                //plancks constant
c=3*10^8;                                      //speed of light
e=1.6*10^-19;
V=50;                                          //accelerating voltage in kV
lambdamin=((h*c)/(e*V*10^3) )*10^9
printf("The shortest wavelength of X-rays roduced by the machine is %f nm",lambdamin);