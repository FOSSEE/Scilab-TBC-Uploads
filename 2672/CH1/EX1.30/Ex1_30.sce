//Example 1_30
clc;
clear;
close;
format('v',5);
//given data :
I1=10;//A
V2=12;//V
R1=2;//ohm
R2=2;//ohm
R3=6;//ohm
R4=6;//ohm
//solution by Norton Theorem
RL=R4;//ohm
//Short Circuit AB
ISC1=I1*R1/(R1+R2);//A//by current source
ISC2=V2/R3;//A///by voltage source
ISC=ISC1+ISC2;//A
Req=(R1+R2)*R3/(R1+R2+R3);//ohm
//Norton equivalent current
I=ISC*Req/(Req+RL);//A
disp(I,"By Nortons theorem, Current through 6 ohm resistance connected across AB(A)");
//solution by Thevenin Theorem
Rth=Req;//ohm
//Converting current source into Voltage source
V1=I1*R1;//V//Converted source
//Applying KVL
I=poly(0,'I');//A
eqn=V1-R1*I-R2*I-R3*I-V2;//
I=roots(eqn);//A
VOC=V2+R3*I;//A
I=VOC/(Rth+RL);//A
disp(I,"By Thevenins theorem, Current through 6 ohm resistance connected across AB(A)");
//Unit of current is given wrong in the book.
