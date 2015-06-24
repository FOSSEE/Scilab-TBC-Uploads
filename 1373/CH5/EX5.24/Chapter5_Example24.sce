//Chapter-5, Example 5.24, Page 218
//=============================================================================
clc
clear


//INPUT DATA
Tc=55;//Tempaerature of concrete hyway in degree C
Tl=35;//Temperature lowered in degree C
Tf=45;//Final temperature in degree C
x=0.05;//Depth in m
k=1.279;//Thermal conductivity in W/m.K
a=(1.77*10^-3);//Thermal diffusivity in m^2/h

//CALCULATIONS
t=1.4;//Time taken from page no. 219 in h
q=2*(k*(Tl-Tf))/(sqrt(3*a*t));//Instantaneous heat removal rate in W/m^2

//OUTPUT
mprintf('Instantaneous heat removal rate is %3.1f W/m^2',q)

//=================================END OF PROGRAM==============================
