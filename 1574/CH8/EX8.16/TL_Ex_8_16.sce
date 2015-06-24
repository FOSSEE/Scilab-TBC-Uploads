clc
//Chapter8
//Example8.16, page no 349
//Given
L=1e-3//inductance
R=40// Resistance
C=0.1e-6// capacitance
G=1e-6//conductance
w=5000// angular freq
Zo=sqrt(complex(R,(w*L))/complex(G,(w*C)))//Characteristic impedance
//Zr=sqrt(sqrt(R^2+(w*L)^2)/sqrt(G^2+(w*C)^2))
[ZoR,ZoI]=polar(Zo)
mprintf('The characteristic impedance is %f /_%fdeg',ZoR,ZoI*180/%pi)

// Note :  There are some calculation errors in the solution presented in the book
