//to calculate the armature voltage reqd

clc;
V=500;
Ra=.28;
Ia1=128;
Ea1=V-Ia1*Ra;
//(Vt2-.28*Ia2)-->n1/sqrt(2)    (i)
//Ea1-->n1    (ii)
Vt2=(Ea1/sqrt(2))+(Ia1*Ra);
disp(Vt2,'armature voltage(V)');