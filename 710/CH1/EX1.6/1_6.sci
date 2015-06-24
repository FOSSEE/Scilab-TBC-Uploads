clc();
clear;
//To determine the thickness of a crystal to produce ultrasonic waves
Y=81*(10^10);                              //Young's modulus for barium titanate in dynes/cm^2
rho=5.51;                                 //density of barium titanate in g/cm^3
f=900;                                   //frequency of ultrasonic waves in kHZ
t=((1/(2*f))*sqrt(Y/rho))*10^-2         //thickness of crystal
printf("The thickness of the crystal to produce ultrasonic waves of frequency 900kHZ is %f mm",t);

