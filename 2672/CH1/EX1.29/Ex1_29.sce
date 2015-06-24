//Example 1_29
clc;
clear;
close;
format('v',5);
//given data :
V1=12;//V
V2=24;//V
R1=4;//ohm
R2=4;//ohm
R3=4;//ohm
RL=5;//ohm
//solution by Norton Theorem
//Short Circuit AB
I=V1/(R1*R3/(R1+R3));//A
ISC1=I*R3/(R1+R3);//A
ISC2=V2/R3;//A
ISC=ISC1+ISC2;//A
Req=R1*R3/(R1+R3);//ohm
//Norton equivalent current
IL=ISC*Req/(Req+RL);//A
disp(IL,"By Nortons theorem, Current through load resistance(A)");
//solution by Thevenin Theorem
Rth=Req;//ohm
//Loop PQRS, Applying KVL
//V1-I1*R1-I2*R1=0
A1=[-R1 -R1];//Coefficient Matrix
B1=[-V1];//Coefficient Matrix
//Loop NTRS, Applying KVL
//V2-I2*R3-R2*I2-R1*I1-R1*I2=0
A2=[-R3-R2-R1 -R1];//Coefficient Matrix
B2=[-V2];//Coefficient Matrix
A=[A1;A2];//Coefficient Matrix
B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//soolution matrix
I1=X(1);//A
I2=X(2);//A
VOC=V2-R3*I2;//A
IL=VOC/(Rth+RL);//A
disp(IL,"By Thevenins theorem, Current through load resistance(A)");
