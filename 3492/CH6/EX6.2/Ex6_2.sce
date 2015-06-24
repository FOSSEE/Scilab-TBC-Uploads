clc
//Chapter6
//Ex_2
//Given
//let K=kT/e
K=0.0259 //in V
Na=10^18 //in cm^-3
Nd=10^16 //in cm^-3
e=1.6*10^-19 // in coulombs
Eo=8.85*10^-12 //in m-3 kg-1 s4 A2
Er=11.9 
E=Eo*Er
ni=1.45*10^10 //in cm^-3
//Vo=(k*T/e)*log(Nd*Na/ni^2)
Vo=(K)*log(Nd*Na/ni^2)
disp(Vo)
Nd=Nd*10^6 //in m^-3
Wo=sqrt(2*E*Vo/(e*Nd))
disp(Wo*10^6,"Depletion width in micro meters is")
