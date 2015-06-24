

//Example No.4.15.
//Page No.141.
//To find energy density.
clc;clear;
T = 6000;//Temperature -[K].
k = 1.38*10^(-23);//Boltzman's constant.
w1 = 450*10^(-9);//wavelength -[m].
w2 = 460*10^(-9);//wavelength -[m].
c = 3*10^(8);//Velcity of light.
v1=(c/w1);
printf("\nThe velocity for wavelength 450 nm is %3.3e Hz",v1);
v2 = (c/w2);
printf("\nThe velocity for wavelength 460 nm is %3.3e Hz",v2);
v = ((v1+v2)/2);
printf("\nThe average value of v is %3.3e Hz",v);
h = 6.626*10^(-34);//Planck's constant.
d = (8*%pi*h*v^(3))/(c^(3));
dv = d*(1/(exp((h*v)/(k*T))-1));//Energy density.
printf("\nThe energy density of the black body is %3.3e J/m^3",dv);
