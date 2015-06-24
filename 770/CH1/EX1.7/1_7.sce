clear;
clc;

//Example - 1.7
//Page number - 23
printf("Example - 1.7 and Page number - 23\n\n");

// Given
V = 1;// [m^(3)] - volume of tank
M = 10;// [m^(3)] - total mass
T = (90+273.15);//[K] - temperature

//From steam table at 90 C as reported in the book
//vapour pressure(pressure of rigid tank) = 70.14[kPa] = 0.7014[bar]
printf(" Pressure of tank = 0.7014 bar\n");

V_liq_sat=0.001036;// [m^(3)/kg] - saturated liquid specific volume
V_vap_sat=2.36056;// [m^(3)/kg] - saturated vapour specific volume

//1=(V_liq_sat*(10-x))+(V_vap_sat*x)
x = (1-(10*V_liq_sat))/(V_vap_sat-V_liq_sat);//[kg]
y = (10-x);//[kg]

printf(" The amount of saturated liquid is %f kg\n",y);
printf(" The amount of saturated vapour is %f kg \n",x);

z = y*V_liq_sat;//[m^(3)] - Volume of saturated liquid 
w = x*V_vap_sat;//[m^(3)] - Volume of saturated vapour

printf(" Total volume of saturated liquid is %f m^(3)\n",z);
printf(" Total volume of saturated vapour is %f m^(3)",w);


