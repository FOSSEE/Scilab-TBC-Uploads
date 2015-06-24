clear ;
clc;
// Example 5.12
printf('Example 5.12\n\n');
printf('Page No. 130\n\n');

// given
T1 = 200;// in degree celcius
T2 = 300;// in degree celcius
m_l = 0.55;// Mass flow rate  of liquid in kg/s
P = 3; //pressure in bar
Cp = 2.34*10^3;// Mean haet capacity in J/kg-K
h = 272*10^3;// Latent heat of eutectic mixture at 3 bar

Q = m_l*Cp*(T2 -T1);// in Watts
m = Q/h;// in kg/s
printf('The mass flow rate of dry saturated eutectic mixture is %.2f kg/s',m)


