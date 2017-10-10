// Example 10_3
clc;funcprot(0);
// Given data
T=200;// °C
P=1554;// kPa
R=0.462;// kJ/kg.K

// Calculation
v_g=(R*(T+273))/P;// m^3/kg
rho=1000;// kg/m^3
v_f=0.001;// m^3/kg
dPbydT=(1906-1254)/(210-190);// kN/m^2.K
h_fg=(T+273)*(v_g-v_f)*dPbydT;// kJ/kg
h_fga=1941;// kJ/kg (From steam tables)
error=((h_fg-h_fga)/h_fga)*100;// The percentage error
printf("\nThe percent error=%2.1f percentage",error);
