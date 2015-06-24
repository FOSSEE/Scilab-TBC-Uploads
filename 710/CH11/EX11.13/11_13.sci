clc();
clear;
//To calculate magnetic field 
m=1.67*(10^-27);                                    //mass of proton
q=1.6*10^-19;                                       //charge of particle
v=25;                                               //cyclotron frequency in MHz
//v=(q*B)/(2*pi*m).Therefore B=(v*2*pi*m)/q
B=(v*10^6*2*%pi*m)/q
printf("The required magnetic field is %f T",B);