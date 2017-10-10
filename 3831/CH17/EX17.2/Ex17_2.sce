// Example 17_2
clc;funcprot(0);
// Given data
n_ech=20.0;// The energy conversion efficiency of the plants eaten by grazing herbivores in %
n_ecc=5.0;// The energy conversion efficiency of the carnivores in %
n_o=(0.100*0.200*0.0500)*100;// %
E_avg=15.3;// The average daily solar energy reaching the surface of the Earth MJ/d.m^2
E_c=10.0;// MJ/d

// Calculation
// car-carnivore,her-herbivore,ec-energy conversion efficiency
E_car=E_c/(n_ecc/100);// MJ/d
E_her=E_car/(n_ech/100);// MJ/d
n_ec=1/100;// Energy conversion rate
E_hreq=E_her/(n_ec);// MJ/d
A=E_hreq/E_avg;// Area in m^2
A_acre=A*(1/4047);// acres
printf("\n%1.2f acres of land is required to grow the plants needed to feed the herbivores eaten by a large carnivore that requires 10.0 MJ/d to stay alive.",A_acre);
