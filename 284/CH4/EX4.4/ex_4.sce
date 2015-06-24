// Chapter 4_Carrier Transport Phenomenon
//Caption_Carrier diffusion
//Ex_4//page 150
T=300
d=0.10   //distance in cm over which concentration varies
Dn=225    //diffusion coefficient
e=1.6*(10^-19)
delN=1*(10^18)-7*(10^17)
J=e*Dn*(delN/d)
printf('The diffusion current density is %1.2fd A/cm^3',J)

