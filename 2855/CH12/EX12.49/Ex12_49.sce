//chapter 12
//page no 541
//exa 12_49
//given
clear;
clc;
Zd=100;        //in km
Do=0.07;       //in ps/nm^2
D1=-0.3;       //in ps/nm^2
Ldsf=(Zd*Do)/(Do-D1);       //length of dispersion compensation fiber in km
printf("\n Length of Dispersion compensation fiber, Ldsf = %0.0f km",Ldsf);//Result
