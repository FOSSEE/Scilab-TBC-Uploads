// Example 5.4.2  
clc;
clear;
lamda=1.3d-6;   //wavelength
theta=1;        //angle in degree
n2=1.465;       //cladding refractive index
W=4.95d-6;      //MFD
Lsm_ang= -10*log10(%e^(-(%pi*n2*W*(theta*%pi/180)/lamda)^2));      //computing loss
printf("\nInsertion loss is %.2f dB.",Lsm_ang);
