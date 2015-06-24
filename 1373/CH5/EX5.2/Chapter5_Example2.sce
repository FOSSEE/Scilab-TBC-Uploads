//Chapter-5, Example 5.2, Page 164
//=============================================================================
clc
clear


//INPUT DATA
A=(0.4*0.4);//Area of copper slab in m^2
t=0.005;//Thickness of copper slab in m
T=250;//Uniform teperature  in degree c
Ts=30;//Surface temperature in degree C
Tsl=90;//Slab temperature in degree C
p=9000;//Density in kg/m^3
c=380;//Specific heat in J/kg.K
k=370;//Thermal conductivity in W/m.K
h=90;//Heat transfer coefficient in W/m^2.K

//CALCULATIONS
A1=(2*A);//Area of two sides in m^2
V=(A*t);//Volume of the slab in m^3
Lc=(V/A1);//Corrected length in m
Bi=((h*Lc)/k);//Biot number
t=-log((Tsl-Ts)/(T-Ts))/((h*A1)/(p*c*V));//Time at which slab temperature becomes 90 degree C in s
y=(h*A1)/(p*c*V);

//OUTPUT
mprintf('Time at which slab temperature becomes 90 degree C is %3.2f s',t)

//=================================END OF PROGRAM==============================
