clear ;
clc;
// Example 4.9
printf('Example 4.9\n\n');
printf('Page No. 103\n\n');

// given
A = 1;// Area in m^2
T1 = 423;// Surface temperature in Kelvin
T2 = 293;// Surrounding air temperature in Kelvin
T1_c = 150;// Surface temperature in degree celcius
T2_c = 20;// Ambient temperature in degree celcius
e = 0.9;// Emissivity of pipe

//(a) Horizontal Pipe
d = 0.100;// Diameter of pipe in m
//For laminar flow in pipe,Q= (1.41*((T1-T2)/d)^0.25)*(T1-T2)
Q_Ca = (1.41*((T1_c-T2_c)/d)^0.25)*(T1_c-T2_c);// Convective heat transfer rate in W/m^2
// By Stefan-Blotzmann law, the radiative heat transfer rate is   Q = 5.669*e*((T1/100)^4-(T2/100)^4)
Q_Ra = 5.669*e*((T1/100)^4-(T2/100)^4);// in W/m^2
Q_Ta = Q_Ra + Q_Ca;// IN W/m^2
printf('The total heat loss from per square meter area is %.2f W/sq.m\n',Q_Ta)// Deviation in answer due to direct substitution


//(b) Vertical Pipe
//For turbulent flow in pipe,Q= (1.24*(T1-T2)^1.33)
Q_Cb = (1.24*(T1-T2)^1.33);// Convective heat transfer rate in W/m^2
// By Stefan-Blotzmann law, the radiative heat transfer rate is   Q = 5.669*e*((T1/100)^4-(T2/100)^4)
Q_Rb = 5.669*e*((T1/100)^4-(T2/100)^4);// in W/m^2
Q_Tb = Q_Rb + Q_Cb;// IN W/m^2
printf('The total heat loss from per square meter area is %.0f W/sq.m\n',floor(Q_Tb))
