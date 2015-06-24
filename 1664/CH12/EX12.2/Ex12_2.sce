

//Example NO.12.2
//Page No.356
//To find critical field.
clc;clear;
Tc = 7.26;//Critical temperature of lead -[K].
Ho = 6.4*10^3;//Magnetic field -[A/m^3].
T = 5;//Temperature -[K].
Hc = Ho*(1-((T^(2))/(Tc^(2))));//Critical magnetic field
printf("\nCritical field at 5K is %.2f T",Hc);

