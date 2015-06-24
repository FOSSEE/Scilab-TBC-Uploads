//calculate resistance
//Chapter 
//Example 2.17
//page 123
clear;
clc; 
disp("Example 2.17")
V=240;            //supply voltage in volts
N=800;            //speed in rpm
Ia=2;              //armeture current in amperes
Ra=0.4;            //armature resistance in ohms
Rf=160;            //field resistance in ohms
Il1=30;            //line current in amperes
E=V-(Ia*Ra);       //induced emf in volts
disp("At no-load")
printf("E=%fV",E)
If=V/Rf;             //field current in amperes
printf("\nIf=%fA",If)
K1=E/(If*N);
printf("\nK1=%f",K1)
disp("At a load of 30A")
Ia1=(Il1-If);
E1=V-(Ia1*Ra);
N1=950;               //speed in rpm
If1=E1/(K1*N1);
printf("If1=%fA\n",If1);
Rr=V/If1;
R=(Rr-Rf);
printf("\nExtra resistance required in the field circuit,R=%fohms",R)


