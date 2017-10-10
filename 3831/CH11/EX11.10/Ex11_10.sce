// Example 11_10
clc;funcprot(0);
// Given data
T=20.0;// °C
beta=0.207*10^-6;// K^-1
k=45.9*10^-11;// m^2/N

// Solution
v_f=0.001002;// m^3/kg
v=v_f;// m^3/kg
c_pminusc_v=(((T+273.15)*beta^2*v)/k)*10^-3;// kJ/(kg.K)
printf("\nThe difference between c_p and c_v for saturated liquid water,c_p-c_v=%1.2e kJ/(kg.K)",c_pminusc_v);
