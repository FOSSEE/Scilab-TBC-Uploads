//caption:Find change in resistance
//Ex3.2
clc
clear
close
G=2//gauge factor
S=500//stress applied(in Kg/cm^2)
v=2*10^6//modulus of elasticity(in Kg/cm^2)
e=(S/v)
R=(e*G)*100
disp(R,'change in resistance(in %)=')