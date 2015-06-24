clc;
close();
clear();
//page no 504
//prob no. 15.5
d=10^5;  //m
Pt=100;  //W
Gt=50;
Pd=Gt*Pt/(4*%pi*d^2);
mprintf('The power density is ,Pd= %.2f nW/m^2',Pd*10^9);
