

clc;
clear;
//Example 3.36
rho=960 //[kg/m^3]
Beta=0.75*10^-3 //[K^-1]
k=0.68  //[W/m.K]
alpha=1.68*10^-7    //[m^2/s]
v=2.94*10^-7    //[m^2/s]
Cp=4.216    //[kJ/kg.K]
Tw=403  //[K]
T_inf=343   //[K]
dT=Tw-T_inf     //[K]
g=9.81  //[m/s^2]
l=0.8   //[m]
W=0.08  //[m]
A=l*W   //Area in [m^2]
P=2*(0.8+0.08)   //Perimeter in [m]
L=A/P   //Characteristic dimension/length,L in   [m]
Nra=g*Beta*L^3*dT/(v*alpha) 

//(i) for natural convection,heat transfer from top/upper surface heated 
Nnu=0.15*(Nra^(1.0/3.0))    //Nusselt number
ht=Nnu*k/L  //[W/m^2.K]
ht=2115.3   //Approximation in book,If done manually then answer diff
//(ii)For the bottom/lower surface of the heated plate
Nnu=0.27*(Nra^(1.0/4.0))    //Nusselt number
hb=Nnu*k/L  //[W/(m^2.K)]
hb=round(hb)
//Rate of heat input is equal to rate of heat dissipation from the upper and lower surfaces of the plate
Q=(ht+hb)*A*(Tw-T_inf)   //[W]
printf("\n Rate of heat input is equal to heat dissipation =%f W",Q);
