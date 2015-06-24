clear;
clc;

//Example - 7.23
//Page number - 257
printf("Example - 7.23 and Page number - 257\n\n");

// Given
T = 300 + 273.15;//[K]
P = 4;//[MPa] 

Cp_0 = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3);//[cal/mol-K]
Cp_0 = (Cp_0*4.186)/18.015;//[kJ/kg-K]

// Cp(T,P) = Cp_0(T,P=0) - T*integral((del^2 V/del T^(2))_P)*dP from limit 0 to P
// Cp = Cp_0 - T*((del^2 V/del T^2)_Pavg)*(P_2 - P_1)

P_avg = (0+4)/2;//[MPa]

//Using finite difference we get  (del^2 V/del T^(2)) = ((V_(T+delta T) - 2*V_T + V_(T-delta T))/(delta_T^(2))
//(del^2 V/del T^(2))_Pavg = (V_(350 C) + V_(250 C) - 2*V_(300 C))/(delta_T^(2)) = del_2 (say)
del_2 = (0.13857 + 0.11144 - 2*0.12547)/(50^(2));//[m^(3)/kg-K^2] // The values are obtained from the steam table as reported in the book.


Cp = Cp_0 - T*del_2*4000;//[kJ/kg-K]

printf(" The value of constant pressure specific heat capacity is, Cp = %f kJ/kg-K",Cp);

// At P = 4 MPa
// Cp = (del H/del T)_P = (H_350 C - H_250 C)/(350 - 250.4)
// Cp = (3092.5 - 2801.4)/(350 - 250.4) = 2.923 [kJ/kg-K]

