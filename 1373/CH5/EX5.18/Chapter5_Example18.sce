//Chapter-5, Example 5.18, Page 202
//=============================================================================
clc
clear


//INPUT DATA
Ti=30;//Initial temperature of the slab in degree C
q=(2*10^5);//Constant heat flux in W/m^2
k=400;//Thermal conductivity in W/m.K
a=(117*10^-6);//Thermal diffusivity in m^2/h
n=0.075;//Nodal spacing in m
x=0.15;//Depth in m
t=(4*60);//Time elapsed in s

//CALCULATION
R=(x^2/(a*t));//R value for t1
t1=(n^2/(R*a));//Value of t1 in s
To=121.9;//The surface temperature after 4 min in degree C from the table on page no. 203
T2=64;//Temperature at 0.15 m from the surface after 4 minutes in degree C from the table on page no. 203

//OUTPUT
mprintf('The surface temperature after 4 min is %3.1f degree C \n Temperature at 0.15 m from the surface after 4 minutes is %i degree C',To,T2)

//=================================END OF PROGRAM==============================
