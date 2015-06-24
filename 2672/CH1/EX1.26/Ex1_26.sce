//Example 1_26
clc;
clear;
close;
format('v',5);
//given data :
E1=140;//V
R1=30;//ohm
R2=70;//ohm
E2=85;//V
RL=[5 15 50];//ohm
//solution
//writing KVL equation for the loop
I=poly(0,'I');
eqn=E1-R1*I-R2*I-E2;//KVL equation
I=roots(eqn);//A
Vth=E1-I*R1;//V
Req=R1*R2/(R1+R2);//ohm
//Thevenin equivalent current
IL1=Vth/(Req+RL(1));//A//for RL=5 ohm
IL2=Vth/(Req+RL(2));//A//for RL=15 ohm
IL3=Vth/(Req+RL(3));//A//for RL=50 ohm
disp(IL1,"RL=5 ohm, branch current I2(A)");
disp(IL2,"RL=15 ohm, branch current I2(A)");
disp(IL3,"RL=50 ohm, branch current I2(A)");
