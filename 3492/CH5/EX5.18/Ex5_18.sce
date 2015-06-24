clc
//Chapter5
//Ex_18
//Given
phi_m=4.28 //in eV
e=1.6*10^-19 // in coulombs
X=4.01 //in eV
kT=0.026 // in eV
Vf=0.1// in V
T=300//in kelvin
Be=30 //A/K2/cm2
A=0.01 //cm2
//part(a)
phi_B=phi_m-X
disp(phi_B,"Theoretical barrier height in eV")
//part(b)
phi_B=0.5 //in eV
Io=A*Be*T^2*exp(-phi_B/kT)
disp(Io*10^6,"Saturation current in micro amperes is")
//let/E=e*Vf //in eV
E=0.1 //in eV
If=Io*(exp((E/kT))-1)
disp(If*10^3,"Forward current in milli amperes is")
