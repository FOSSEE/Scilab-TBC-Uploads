//Example 4.15: Current 
clc;
clear;
close;
//given data :
V1=4.2;// in V
V2=1.43;// in V
r1=21.0;// in ohm
r2=1;// in ohm
r3=15;// in ohm
I=V1/r1;// in A
R=V2/I;// in ohm
R1=R+r2;
R2=R-r2;
R3=round(R1*(r1-R1)/r1);
R4=R2*(r1-R2)/r1;
e1=R1*I;
e2=R2*I;
I1=(e1-V2)*10^3/(R3+r3);
I2=(V2-e2)*10^3/(R4+r3);
disp(I1,"Current in one direction,I1(mA) = ")
disp(I2,"Current in another direction,I2(mA) = ")
