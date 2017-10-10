// Ex 38 Page 381

clc;clear;close;
// Given
P=50;//kW
V=250//V
N1=400;//rpm
Ra=0.02;//ohm
Rf=50;//ohm
Pi=50;//kW
Vin=250;//V
Vd=1;//V per Brush

I=P*10**3/V//A
Ish=V/Rf;//A
Ia=I+Ish;//A
Va=Ia*Ra;//V
Vbd=2*Vd;//V
Eb1=V+Va+Vbd;//V


//as motor
I=P*10**3/V//A
Ish=V/Rf;//A
Ia=I-Ish;//A

Va=Ia*Ra;//V
Vbd=2*Vd;//V
Eb2=V-Va-Vbd;//V
N2=(Eb2/Eb1)*N1;//rpm
printf("Speed of the machine running as shunt motor = %.f rpm",N2)
