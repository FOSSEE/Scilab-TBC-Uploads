clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.8   Page 761 \n')// Example 12.8

// Total emissivity of cover glass to solar radiation

T = 5800			;//[K] temperature of surface
e = .8;
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant

//From Table 12.1
//For wl1 = .3 micro-m and T = 5800 K, At wl1*T = 1740 micro-m.K
F0wl1 = .0335;
//For wl1 = .3 micro-m and T = 5800 K, At wl2*T = 14500 micro-m.K
F0wl2 = .9664;

//Hence from equation 12.29
t = .90*[F0wl2 - F0wl1];

printf('\n Total emissivity of cover glass to solar radiation = %.2f',t);