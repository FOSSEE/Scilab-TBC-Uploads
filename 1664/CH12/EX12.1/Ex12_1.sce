
//Example NO.12.1
//Page No.356
//To find critical field.
clc;clear;
Tc = 3.7;//Critical temperature of tin -[K].
Ho = 0.0306;//Magnetic field -[T].
T = 2;//Temperature -[K].
Hc = Ho*(1-((T^(2))/(Tc^(2))));//Critical magnetic field
printf("\nCritical field at 2K is %.4f T",Hc);
