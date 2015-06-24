clear;
clc;
printf("\n Example 6.5");
gas_flow_rate =0.2;       //units are in kg/m^2
c = 0.88;                 //specific heat capacity of air is kj/kg K
viscosity = 0.015*10^(-3);//viscosity is in Ns/m^2
d = 0.25*10^(-3);         //particle size is in meters
k = 0.03;                 //thermal conductivity is in W/m K
e = 0.57;                 //e is voidage

T = [339.5;337.7;335.0;333.6;333.3;333.2]; //temperature is in kelvins
deltaT = T - 333.2;
h = [0;0.64;1.27;1.91;2.54;3.81];
xtitle("temperature rise as a function of bed height","height above bed support(mm)","deltaT(K)");
plot(h,deltaT,'o-');

//Area under the curve gives the value of  the heat teansfer integral =8.82mm K

q = 0.2*0.88*(339.5-332.2);
printf("\n heat transferred = %.2f kw/m^2 of bed cross sectional area",q);

//Assuming 1m^3 volume
Vp = (1-0.57);       //Volume of particles is in m^3
printf("\n Volume of particles is %.2f m^3",Vp)
v1 = (%pi/6)*d^3;    //Volume of 1 particle in m^3
printf("\n Volume of 1 particle is %.2f*10^(-12) m^3",v1*10^(12));
printf("\n number of particles is %.2f*10^(10)",Vp/v1*10^(-10));

x =poly([0],'x');
h = roots(1100 - x*(1.03*10^4)*(8.82*10^(-3)));
printf("\n heat transfer coefficient = %.1f W/m^2",h);

//Nu = 0.11Re^(1.28)
Re = (0.2*0.25*10^(-3))/(0.015*10^(-3));
h1 = 0.11*(Re)^(1.28)*k/d;
printf("\n h = %.1f W/m^2 K",h1);


