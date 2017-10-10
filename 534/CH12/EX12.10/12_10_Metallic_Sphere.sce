clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.10   Page 768 \n')// Example 12.10

// Total hemispherical absorptivity and emissivity of sphere for initial condition
// values of absoprtivity and emissivity after sphere has been in furnace a long time

Ts = 300;			//[K] temperature of surface
Tf = 1200;           //[K] Temperature of Furnace
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant
// From the given graph of absorptivities
a1 = .8;    //between wavelength 0 micro-m- 5 micro-m
a2 = .1;    //greater than wavelength 5 micro-m

//From Table 12.1
//For wl1 = 5 micro-m and T = 1200 K, At wl1*T = 6000 micro-m.K
F0wl1 = 0.738;
//From equation 12.44
a = a1*F0wl1 + a2*(1-F0wl1);
//From Table 12.1
//For wl1 = 5 micro-m and T = 300 K, At wl1*T = 1500 micro-m.K
F0wl1s = 0.014;
//From equation 12.36
e = a1*F0wl1s + a2*(1-F0wl1s);

printf('\n For Initial Condition \n Total hemispherical absorptivity = %.2f     Emissivity of sphere = %.2f \n\n Beacuase the spectral characteristics of the coating and the furnace temeprature remain fixed, there is no change in the value of absorptivity with increasing time. \n Hence, After a sufficiently long time, Ts = Tf = %i K and emissivity equals absorptivity e = a = %.2f',a,e,Tf,a);