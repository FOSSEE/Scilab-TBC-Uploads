
//To Calculate the Work Done in Rotating the Magnet

//Example 36.2

clear;

clc;

M=1.0*10^4;//Magnetic Moment of the Bar Magnet in J/T

B=4*10^-5;//Horizontal Magnetic Field in Tesla

theta1=0;//Initial Angular position of the Magnet

theta2=%pi/3;//Final Angular position of the Magnet

W=-M*B*(cos(theta2)-cos(theta1));//Work Done in Rotating the Magnet

printf("Work Done in Rotating the Magnet = %.1f J",W);
