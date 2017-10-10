//Example no 1.7
//To calculate a)the speed of light b) The wavelenght in medium c) The wavenumber in medium
//Page no. 25

clc;
clear all;

//a)The speed of light
c=3*10^8;                               //Speed of light in free space (m/s)
n=1.45;                                 //Given refractive index of dielectric medium
v=(c/n);                               //Speed of light in medium (in m/s)

//Displaying the result in command window
printf('\n Speed of light in medium = %0.3f X 10^8 m/s',v*10^-8);

//b) The wavelenght in medium 
f=190*10^12;                           //Given operating frequency of laser
lambdam=(v/f);                         //Wavelenght in medium 

//Displaying the result in command window
printf('\n Wavelenght of laser in medium = %0.4f micrometer',lambdam*10^(6));

//c) The wavenumber in medium
k=(2*%pi)/lambdam;                    //Wavenumber in medium

//Displaying the result in command window
printf('\n Wavenumber in medium = %0.2f X 10^6 m^-1',k*10^-6)
