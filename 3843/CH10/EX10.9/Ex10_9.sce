// Example 10_9
clc;funcprot(0);
// Given data
T=400;// °C
P=1;// MPa
v=0.3066;// m^3/kg

// Calculation
ds=7.619-7.302;// kJ/kg.K
dT=450-350;// K
c_p=(T+273)*(ds/dT);// kJ/kg.K
dv=0.3304-0.2825;// m^3/kg
mu_j=(1/(c_p*10^3))*[((T+273)*(dv/dT))-v];// K/Pa
printf("\nThe Joule thomson coefficient,mu_j=%1.2e K/Pa",mu_j);
dT=403.7-396.2;// K
dP=(1.5-0.5)*10^6;// Pa
mu_j=dT/dP;// K/Pa
printf("\nThe Joule thomson coefficient,mu_j=%1.2e K/Pa",mu_j);
