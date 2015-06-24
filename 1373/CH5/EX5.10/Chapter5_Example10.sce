//Chapter-5, Example 5.10, Page 178
//=============================================================================
clc
clear


//INPUT DATA
q=(0.3*10^6);//Heat flux in W/m^2
t=(10/60);//Time taken for heat transfer in s
Ti=30;//Initial temperature of the slab in degree C
x=0.2;//Distance of the plane from the surface in m
k=386;//Thermal conductivity in W/m.K
a=0.404;//Thermal diffusivity in m^2/h

//CALCULATIONS
Ts=((q*sqrt(3.14*a*t))/k)+Ti;//Surface temperature in degree C
X=(x/(2*sqrt(a*t)));//X for calculating erf function
Y=0.4134;//Taking ref(0.385)=0.4134 from table 5.1 on page no. 175
T=Ts-(Y*(Ts-Ti));//Tempertaure at a distance of 20 cm from the surface after 10 min in degree C

//OUTPUT
mprintf('Tempertaure at a distance of 20 cm from the surface after 10 min is %3.2f degree C',T)

//=================================END OF PROGRAM==============================
