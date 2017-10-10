clc;
clear;
g=9.8 //acceleration  due to gravity in m/s^2
lambda=10 //wavelength in m

//calculation

v_g=sqrt((lambda*g*%pi)/2)
mprintf("The group velocity is = %2.2f m/s",v_g)
