clc
//Chapter6
//Ex_5
//Given
A=10^-6 //in m2
Vo=0.856 //in V
I=5*10^-3 // in Amperes
Iso=0.176*10^-12 //in Amperes
e=1.6*10^-19 // in coulombs
Eo=8.85*10^-12 //in m-3 kg-1 s4 A2
Er=11.9 
Th=417*10^-9 //in seconds
Nd=10^22 //in m^-3
//let K=kT/e
K=0.0259 //in V
//Vo=(k*T/e)*log(I/Iso)
V=(K)*log(I/Iso)
I=5 // in mA
rd=25/I
disp(rd,"Incremental diode resistance in ohms is")
E=Eo*Er
C_dep=A*sqrt((e*E*Nd)/(2*(Vo-V)))
disp(C_dep,"Depletion capacitance of the diode in Farads")
C_diff=Th*I/25
disp(C_diff,"Incremental difusion coefficient in Farads is")
