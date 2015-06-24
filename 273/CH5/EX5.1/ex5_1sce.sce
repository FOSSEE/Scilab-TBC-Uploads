clc;clear;
//Example 5.1
//Electron refraction, calculation of potential difference

//given values
 V1=250;//potential by which electrons are accelerated in Volts
 alpha1=50*%pi/180;//in degree
 alpha2=30*%pi/180;//in degree
b=sin(alpha1)/sin(alpha2);
 //calculation
V2=(b^2)*V1;
a=V2-V1;
disp(a,'potential difference(in volts) is:');


