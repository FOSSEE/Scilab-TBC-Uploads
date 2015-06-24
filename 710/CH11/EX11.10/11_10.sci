clc();
clear;
//To calculate radius
rho=1.83*(10^17);                                       //average density of carbon nucleus in kg/m^3
m=12;                                                   //mass in u
//rho=m/[(4/3)*pi*r].Therefore r=[m/[(4/3)*pi*rho]]^(1/3)
r=[m*1.66*(10^-27)/((4/3)*%pi*rho)]^(1/3)*10^15         //radius in fm
printf("The radius is %f fm",r);
