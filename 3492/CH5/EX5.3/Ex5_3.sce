clc
//Chapter5
//Ex_3
//Given
e=1.6*10^-19 // in coulombs
ue=1350//in cm2/V/s
uh=450//in cm2/V/s
ni=1.45*10^10 //in cm^-3
L=1 //in cm
A=1 //in cm2
N_Si=5*10^22 //in cm^-3
sigma=e*ni*(ue+uh)
R=L/(sigma*A)
disp(R,"Resistance of a pure Silicon crystal in ohms is")
Nd=N_Si/10^9
n=Nd //at room temperature
p=ni^2/Nd
sigma=e*n*ue
R=L/(sigma*A)
disp(R,"Resistance in ohms of Silicon crystal when dopped with Arsenic with 1 in 10^9 is")

