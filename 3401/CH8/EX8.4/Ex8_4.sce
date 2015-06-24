clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Va=0.65 //V
Js=4.15*10^-11// A/cm^2
Nd=10**16 //cm**-3
un=1350 //cm^2/Vs
Jn=3.29 //A/cm^2

J=Js*[exp(Va/(k*T))-1]
disp(J,"current density in A/cm^2 is= ")

E=Jn/(e*Nd*un)
disp(E,"electric field in V/cm is= ")

