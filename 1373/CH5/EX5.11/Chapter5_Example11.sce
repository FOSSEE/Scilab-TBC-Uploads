//Chapter-5, Example 5.11, Page 178
//=============================================================================
clc
clear


//INPUT DATA
a=0.405;//Thermal diffusivity in m^2/h
Ti=100;//Initial temperture in degree C
Tf=0;//Final tempertaure in degree C
Tg=(4*100);//Temperature gradient in degree C/m
t1=1;//Time taken in m

//CALCULATIONS
t=(Ti-Tf)^2/(Tg^2*3.14*a);//Time required for the temperature gradient at the surface to reach 4 degree/cm in h
x=sqrt(2*a*(t1/60));//The depth at which the rate of cooling is maximum after 1 minute in m

//OUTPUT
mprintf('Time required for the temperature gradient at the surface to reach 4 degree/cm is %3.3f h \n The depth at which the rate of cooling is maximum after 1 minute is %3.4f m',t,x)

//=================================END OF PROGRAM==============================
