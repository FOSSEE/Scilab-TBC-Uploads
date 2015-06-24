//example 1.4
//page 14
clc; funcprot(0);
//initialisation of variable
delP=102-100;
Beta1=102+14.6;
Beta2=100+14.6;
Beta_av=Beta1/2+Beta2/2;
V=1;
delV=-delP*V/Beta_av;
disp(-delV,"increase in volume(ft^3)=");
clear
