clc
clear

//Input data
SG_oil=0.8 //Specific gravity of crude oil 
K_oil=153036*10^4 //Bulk modulus of Oil in N/m^2
K_hg=2648700*10^4 //Bulk modulus of Mercury in N/m^2
d_steel=7860 //Density of steel in kg/m^3
E_steel=200*10^9 //Modulus of elasticity in Pa
d_hg=13600 //Density of mercury in kg/m^3
d_water=1000 //Density of water in kg/m^3

//Calculation
d_oil=SG_oil*d_water //Density of oil in kg/m^3
a_oil=sqrt(K_oil/d_oil) //Sonic velocity of crude oil in m/s
a_hg=sqrt(K_hg/d_hg) //Sonic velocity of mercury in m/s
a_steel=sqrt(E_steel/d_steel) //Sonic velocity of steel in m/s

//Output
printf('(A)Sonic velocity of crude oil is %3.2f m/s\n (B)Sonic velocity of mercury is %3.2f m/s\n (A)Sonic velocity of steel is %3.1f m/s\n',a_oil,a_hg,a_steel)
