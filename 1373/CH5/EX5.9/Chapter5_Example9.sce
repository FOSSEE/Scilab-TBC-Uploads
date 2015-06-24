//Chapter-5, Example 5.9, Page 177
//=============================================================================
clc
clear


//INPUT DATA
Tc=55;//Tempertaure of the concrete in degree C
Ts=35;//Temperature lowered in degree C
Tf=45;//Final temperature in degree C
x=0.05;//Depth of the slab in m
k=1.279;//Thermal conductivity in W/m.K
a=0.00177;//Thermal diffusivity in m^2/h

//CALCULATIONS
T=(Tf-Ts)/(Tc-Ts);//Temperature distribution
X=0.485;//Taking 0.5=erf(0.482) from table 5.1 on page no. 175
t=(x^2)/(4*X^2*a);//Time taken to cool the concrete to 45 degree C in h

//OUTPUT
mprintf('Time taken to cool the concrete to 45 degree C is %3.2f h',t)

//=================================END OF PROGRAM==============================
