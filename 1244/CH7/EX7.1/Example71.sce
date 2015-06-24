

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.1 ")

//Diameter in m
D = 0.3;
//Cruising speed in m/s
Uinfinity = 150;

//At an altitude of 7500 m the standard atmospheric air pressure is 38.9 kPa and the density of the air is 0.566 kg/m3 (From Table 38 in Appendix 2).
rho = 0.566;
//Dynamic viscosity in kgm/s
mu = 0.0000174;
//Prandtl number
Pr = 0.72;
//Thermal conductivity in W/mK
k = 0.024;

//The heat transfer coefficient at the stagnation point (0) is, according to Eq. (7.2)

disp("Heat transfer coefficient at stagnation point in W/m2K")
//Heat transfer coefficient at stagnation point in W/m2K
h = (((k*1.14)*((((rho*Uinfinity)*D)/mu)^0.5))*(Pr^0.4))/D

disp("Distribution of the convection heat trans-fer coefficient over the forward portion of the wing")
for o = 0:15:75 //o is the parameter used in the loop
    //convection heat trans-fer coefficients in W/m2K
  ho = h*(1-(o/90)^3);
  // L.26: No simple equivalent, so mtlb_fprintf() is called.
  mtlb_fprintf("At an angle of %5.2f degree, heat transfer coeffcient is %5.2f\n",o,ho)
end;
