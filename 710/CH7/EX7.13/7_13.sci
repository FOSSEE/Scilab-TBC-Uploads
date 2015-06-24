clc();
clear;
//To determine the magnetic field
v=9.15*10^7;                    //cyclotron frequency of proton
m=1.67*10^-27;                  //mass of proton
q=1.6*10^-19;
B=(2*%pi*v*m)/q                 // magnetic field
printf("The magnetic field is %f T",B);