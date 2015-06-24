//Chapter-5, Example 5.5, Page 166
//=============================================================================
clc
clear


//INPUT DATA
Ti=100;//Temperature of air in degree C
t=0.03;//Thickness of slab in m
To=210;//Initial temperature of the plate in degree C
t=300;//Time for attaining temperature in s
T=170;//Temperature decreased in degree C
c=380;//Specific heat in J/kg.K
p=9000;//Density in kg/m^3

//CALCULATIONS
Lc=(t/2);//Corrected length in m
h=-log((T-Ti)/(To-Ti))/((t*10^4)/(p*c*Lc));//Heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient is %3.2f W/m^2.K',h)

//=================================END OF PROGRAM==============================
