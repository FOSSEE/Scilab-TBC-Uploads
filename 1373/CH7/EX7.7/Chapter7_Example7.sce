//Chapter-7, Example 7.7, Page 290
//=============================================================================
clc
clear

//INPUT DATA
Ta=0;//Temperature of air stream in degree C
Tp=90;//Temperature of heated plate in degree C
v=75;//Speed of air in m/s
L=0.45;//Length of the palte in m
W=0.6;//Width of the plate in m
Re=(5*10^5);//Reynolds number at the transition from laminar to turbulant

//CALCULATIONS
Tf=(Ta+Tp)/2;//Film temperature in degree C
k=0.028;//Thermal conductivity of air at 10 degree C 
Pr=0.698;//prant number of air at 10 degree C
v1=(17.45*10^-6);//Kinematic viscosity of air at 10 degree C 
x=(Re*v1)/v;//Critical length in m
Rel=(v*L)/v1;//Reynolds number
Cfl=((0.074/Rel^(1/5))-(1740/Rel))/10^-3;//Average value of friction coefficient *10^-3
Nu=((0.037*Rel^(4/5))-870)*Pr^(1/3);//Nussults number
h=(Nu*k)/L;//Heat transfer coefficient in W/m^2.K
Q=(2*h*L*W*(Tp-Ta));//Rate of energy dissipation in W

//OUTPUT
mprintf('Average value of friction coefficient is %3.2f*10^-3 \nHeat transfer coefficient is %3.0f W/m^2.K \nRate of energy dissipation is %i W',Cfl,h,Q)

//=================================END OF PROGRAM==============================
