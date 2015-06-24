clc
//Chapter4
//Ex_14
//Given
phi=2.6 //in eV
e=1.6*10^-19 //in coulombs
phi=phi*e //in Joules
x=1*10^-3 // distance in m
V=4*10^3 // in Volts
Be=3*10^4 //schottky coefficient in A/m2/K2
T=1600 //in degree celcius
T=T+273 //in Kelvin
k=1.38*10^-23 //m2 kg s-2 K-1
d=2*10^-3 //in m
l=4*10^-2 //in in m
A=2.5*10^-4 //in m2 //from example 12
E=V/x
beta_s=3.79*10^-5 //in eV/sqrt(V/m)
phi_eff=phi-beta_s*sqrt(E)
Io=A*Be*T^2
I1=Io*exp(-phi/(k*T))
I2=I1*exp((phi-phi_eff)*e/(k*T)) //converting phi value from joules to eV
disp(I2,"Theoretical saturation current in Amperes is")
