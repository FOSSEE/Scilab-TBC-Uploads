//Chapter-5, Example 5.22, Page 214
//=============================================================================
clc
clear

//INPUT DATA
T=[800,200];//Limits in which temperature varies in degree C
t=12;//Cycle time in h
x=0.1;//Depth of penetration in m
k=1.8;//Thermal conductivity in W/m.K
a=0.02;//Thermal diffusivity in m^2/h

//CALCULATIONS
w=(2*3.14)/t;//Angular velocity in rad/h
t1=sqrt(1/(2*a*w))*x;//Time lag in h
Tmax=(T(1)-T(2))/2;//Range of maximum temperature in degree C
q=((2*k*Tmax)/sqrt(w*a))*(3600/1000);//Heat flow through the surface in kJ/m^2

//OUTPUT
mprintf('(i)Time lag of the temperature wave at a depth of 10 cm from the inner surface is %3.2f h \n(ii)The flow through a surface located at a distance of 10 cm from the surface during the first six hours interval while the temperature is above the mean value is %i kJ/m^2',t1,q) 

//=================================END OF PROGRAM==============================
