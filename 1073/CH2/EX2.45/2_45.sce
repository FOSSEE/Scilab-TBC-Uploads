clc;
clear;
//Example 2.45
T_inf=390;               //[K]
U=600;                   //[W/sq m.K]
Ac=1;                     //[sq m]
Av=10                       //Vessel area in [sq m]
m=1000;                  //[kg]
Cp=3.8*10^3;            //[J/kg.K]
To=290;                  //[K]
T=360;                   //[K]
h=8.5                   //[W/sq m.K]
//Heat gained from the steam=Rate of increase of internal energy
//U*A*(T_inf-T)=m*Cp*dT
deff('[x]=f(t)','x=log((T_inf-To)/(T_inf-T))-U*Ac*t/(m*Cp)');
t=fsolve(1,f);          //[in s]
t=round(t)    //[in s]
Ts=290;
printf("\nTime taken to heat the reactants over the same temperature range is %f h",t);
function t1=g(T),t1=m*Cp/(U*Ac*(T_inf-T)-h*Av*(T-Ts)),endfunction
t1=intg(To,T,g);
deff('[m]=fx(Tmax)','m=U*Ac*(T_inf-Tmax)-h*Av*(Tmax-Ts)')
T_max=fsolve(1,fx)
printf("\nANS: In CASE 1\nTime  taken to heat the reactants = %f s .ie %f h \n",t,t/3600);
printf("\nANS: In CASE 2 \n Time  taken to heat the reactants = %f s\n",t1);
printf("\nANS.:  Maximum temperature at which temperature can be raised is %f K\n",T_max);

