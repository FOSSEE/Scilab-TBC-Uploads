//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_20
clc;
clear;
R=0.05;// Resistance in ohm
N0=1000;//Speed in rpm
Rf=46;// Resistance in ohm
I1=75;//Current in A
I2=150;//Current in A
I3=250;//Current in A
V=230;// voltage in V
Eb=230;//Back emf in V
If=V/Rf;
Ia1=I1-If;
Eb1=V-(Ia1*R);
N1=(Eb1/Eb)*N0;
disp(N1,"The speed N1 in rpm is:")
Ia2=I2-If;
Eb2=V-(Ia2*R);
N2=(Eb2/Eb)*N0;
disp(N2,"The speed N2 in rpm is:")
Ia3=I3-If;
Eb3=V-(Ia3*R);
N3=(Eb3/Eb)*N0;
disp(N3,"The speed N3 in rpm is:")

