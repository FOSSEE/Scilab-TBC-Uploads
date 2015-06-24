clc
//Chapter8
//Example8.18, page no350
//Given
Zo=50// characteristic impedance
P=500e-3//Supplied power
S=1.4//VSWR on the line
Emax=sqrt(Zo*S*P)//Max vtg

Emin=sqrt(Zo*P/S)// Min vtg
mprintf('The max voltage on line is %f V\n The min voltage on line is %f V',Emax,Emin)
