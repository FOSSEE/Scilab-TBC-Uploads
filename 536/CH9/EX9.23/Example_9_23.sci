clear;
clc;
printf("\t Example 9.23\n");
function[n]=mole(w,m)
    n = w/m;
    funcprot(0);
endfunction

function[p]=partial(n1)
    p = 308*(n1/total);
    funcprot(0);
endfunction

w_steam = 0.57;      //mass flow rate of steam entering in [kg/sec]
w_CO2 = 0.20;        //mass flow rate of CO2 entering in [kg/sec]
m_water = 18;        //molecular mass of water in kg
m_CO2 = 44;          //molecular mass of CO2 in kg
n_steam = mole(w_steam,m_water);     //number of moles in kmol
n_CO2 = mole(w_CO2,m_CO2);           //number of moles in kmol
printf("\n At the entrance there is %.3f kmol steam",n_steam);
printf("\n At the entrance there is %.4f kmol water",n_CO2);
total = n_steam + n_CO2;
printf("\n Total number of moles fed to the condenser per second = %.4f kmol",total);
p_steam = partial(n_steam);
p_CO2 = partial(n_CO2);
printf("\n At the inlet partial pressure is %d kN/m^2 watre",p_steam);
printf("\n At the inlet there is %d kN/m^2 CO2",p_CO2);
printf("\n From the Table 11A in the appendix Dew point = %d K",404);
mean_mol = (0.57 + 0.20)/total;     //mean molecular weight of the mixture in kg/kmol

outlet_steam = 11.7;            //partial pressure of water in kN/m^2
outlet_CO2 = 308 - outlet_steam; //partial pressure of water in kN/m^2
printf("\n At the outlet partial pressure is %.1f kN/m^2 water",outlet_steam);
printf("\n At the outlet there is %.1f kN/m^2 CO2",outlet_CO2);
n_s = n_CO2*outlet_steam/outlet_CO2;
steam_condensed = n_steam - n_s;
printf("\n steam codensed = %.5f kmol",steam_condensed);

printf("\n\n For the interval 404 to 401 K");
p_steam_401K = 252.2;   //[kN/m^2]
p_CO2_401K = 308 - 252.2;//[kN/m^2]
steam_remaining = 0.0045*p_steam_401K/p_CO2_401K;
s_c = n_steam - steam_remaining;   //[kmol]
Heat_cond = s_c*18*(2180 + 1.93*(404-401));         //[kW]
Heat_uncondensed_steam = 0.0203*18*1.93*(404-401);  //[kW]
Heat_CO2 = 0.020*0.92*(404-401);
total_heat = Heat_cond + Heat_uncondensed_steam + Heat_CO2;
printf("\n Heat of condensation = %d kW",Heat_cond);
printf("\n Heat of uncondensed steam = %.1f kW",Heat_uncondensed_steam);
printf("\n Heat from CO2 = %.1f kW",Heat_CO2);
printf("\n Total = %.1f kW",total_heat);

printf("\n\n For other intervals simiarly");
printf("\n Interval(K)         Heat Load(kW)");
printf("\n  404 - 401             %.1f      ",total_heat);
printf("\n  401 - 397             %.1f      ",323.5);
printf("\n  397 - 380             %.1f      ",343.5);
printf("\n  380 - 339             %.1f      ",220.1);
printf("\n  339 - 322             %.1f      ",57.9);
printf("\n  total                 %.1f      ",total_heat+323.5+343.5+220.1+57.9);
flow_water = 1407.3/(4.187*(319-300));      //[kg/sec]
hi = 6.36;       //[kW/m^2 K]Based on flow velocity of 1425 kg/m^2 sec
ho = 5.25;       //[kW/m^2 K]Based on outside area
Cp = (0.20*0.92 + 0.57*1.93)/0.77;  //[kJ/kg K]
printf("\n Mean specific heat, Cp = %.3f kJ/kg K",Cp);
k_mean = 0.025;   //[kW/m K]
a = 0.0411;       //[m^2]
mass_velocity = (0.20+0.57)/0.0411;     //[kg/m^2 sec]
printf("\n Mass velocity = %.1f kg/m^2 sec",mass_velocity);
hg = 107;         //[W/m^2 K] at Re = 29,800 at equivalent diameter = 0.024m
u_pD = 0.62;      //(u/pD)^0.67 = 0.62
Cpu_k = 1.01;     //(Cp*u/k)^0.67
Psf = (122.6 - 38)/log(122.6/38);
kG = hg*(Cpu_k)/(1000*Cp*Psf*u_pD);
printf("\n\n kG = %.4f",kG);

printf("\n Point  Ts  Tc  UT   UTow  Q     A = Q/(UT)    T   Tow   (Q/T)ow");
printf("\n  1    404  378 309  -     -        -        84.4  -     -     ");
printf("\n  2    401  356 228  268.5 468.4   1.75      88.1 86.3     5.42");
printf("\n  3    397  336 145  186.5 323.5   1.74      88.6 8.4      3.66");
printf("\n  4    380  312 40.6 88.1  343.5   3.89      76.7 82.7     4.15");
printf("\n  5    339  302 5.4  17.5  220.1   12.58     38.1 55.2     4.00");
printf("\n  6    322  300 2.1  3.5   51.9    14.83     22.2 29.6     1.75");

printf("\n Assuming no scale resistance, the overall coefficient = %.3f W/m^ K",1407.3/(34.8*74.2));
printf("\n The available surface area on the outside of the tubes = 0.060 m^2 or %.1f m^2",246*3.65*0.060);
printf("\n Actual coeficient = %.3f kW/m^2 K",1407.3/(53.9*74.2));
printf("\n Dirt factor = %.2f m^2 K/kW",(0.545-0.352)/(0.545*0.352));

















