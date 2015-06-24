clc
//Chapter1
//Ex_1.2
//Given
R=8.314 // in J/mol/K
T=27 //in degree celcius
T=T+273 //in Kelvin
M_at=14 //in g/mol
//From Kinetic Theory
V_rms=sqrt((3*R*T)/(2*M_at*10^-3))
disp(V_rms,"rms velocity of Nitrogen molecule in atmosphere at 300K in m/s is")
V_rmsx=V_rms/sqrt(3)
disp(V_rmsx,"rms velocity in one direction in m/s is")
