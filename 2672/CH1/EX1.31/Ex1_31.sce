//Example 1_31
clc;
clear;
close;
format('v',5);
//given data :
V1=12;//V
V2=6;//V
V3=24;//V
R1=4;//ohm
R2=2;//ohm
R3=6;//ohm
R4=3;//ohm
R5=12;//ohm
R6=16;//ohm
//solution by Norton Theorem
RL=R6;//ohm
//Thevenin theorem
//Loop 1 applying KVL
//V1-(R1+R2)*I1+V2-R3*(I1+I2);
A1=[-R1-R2-R3 -R3];//Coefficient Matrix
B1=[-V1-V2];//Coefficient Matrix
//Loop 2 applying KVL
//V3-R4*I2+V2-R3*(I1+I2)-R5*I2;
A2=[-R3 -R4-R3-R5];//Coefficient Matrix
B2=[-V3-V2];//Coefficient Matrix
A=[A1;A2];//Coefficient Matrix
B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//soolution matrix
I1=X(1);//A
I2=X(2);//A
VOC=-R5*I2+V3;//V
Rth=((R1+R2)*R3/(R1+R2+R3)+R4)*R5/((R1+R2)*R3/(R1+R2+R3)+R4+R5);//ohm
I=VOC/(Rth+RL);//A
disp(I,"By Thevenin Theorem, current through 16 ohm resistor(A)");
//solution by Norton Theorem
//Converting Voltage sources into current sources
I1=V1/(R1+R2);//A
I2=V2/R3;//A
I3=V3/R5;//A
Req=Rth;//ohm
//Combining I1 & I2 | parallel & opposite
I1=I1-I2;//A
I2=0;//A
ISC1=I1/2;//A//considering I1 only
ISC2=I3;//A//considering I3 only
ISC=ISC1+ISC2;//A
//Norton equivalent current
I=ISC*Req/(Req+RL);//A
disp(I,"By Nortons theorem, current through 16 ohm resistor(A)");
