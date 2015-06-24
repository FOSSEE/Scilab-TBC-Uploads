clc();
clear;
//To determine ground state & first excited state energy
h=6.626*10^-34;                           //plancks constant
a=2*10^12;                                //angular frequency in rad/s
E0=(0.5*(h/(2*%pi*1.6*10^-19))*a)*10^3   //ground state energy
E1=(1.5*(h/(2*%pi*1.6*10^-19))*a)*10^3   //first excited state energy
printf("The ground state energy is %f Mev and first excited state energy is %f Mev",E0,E1);
