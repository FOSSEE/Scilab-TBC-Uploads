//Example 6_2
clc;
clear;
close;
format('v',5);
//given data : 
V=100;//V
//For diode D1
V1gamma=0.2;//V
r1=20;//ohm
//For diode D2
V2gamma=0.6;//V
r2=15;//ohm
//Part(a)
//Assume D1 & D2 are ON
R=10;//kohm
//Writing loop equations
//V=(R+r1/1000)*I1+R*I2+V1gamma;(eqn(1))
A1=[(R+r1/1000) R];//Coefficient matrix
B1=[V-V1gamma];//Coefficient matrix
//V=(R+r2/1000)*I2+R*I1+V2gamma;(eqn(2))
A2=[R (R+r2/1000)];//Coefficient matrix
B2=[V-V2gamma];//Coefficient matrix
A=[A1;A2];//Coefficient matrix
B=[B1;B2];//Coefficient matrix
X=A^-1*B;//solution matrix
I1=X(1);///mA
I2=X(2);///mA
if I2<0 then
    disp("I2<0, Assumption D2 is ON, not valid.")
//Assume D1 is ON & D2 is OFF
I2=0;//A
I1=(V-V1gamma)/(R+r1/1000);//mA
disp(I2,I1,"(a) Diode current I1 & I2 in mA are : ");
end;
//Part(b)
format('v',7);
//Assume D1 & D2 are ON
R=1.5;//kohm
//Writing loop equations
//V=(R+r1/1000)*I1+R*I2+V1gamma;(eqn(1))
A1=[(R+r1/1000) R];//Coefficient matrix
B1=[V-V1gamma];//Coefficient matrix
//V=(R+r2/1000)*I2+R*I1+V2gamma;(eqn(2))
A2=[R (R+r2/1000)];//Coefficient matrix
B2=[V-V2gamma];//Coefficient matrix
A=[A1;A2];//Coefficient matrix
B=[B1;B2];//Coefficient matrix
X=A^-1*B;//solution matrix
I1=X(1);///mA
I2=X(2);///mA
disp(I2,I1,"(b) Diode current I1 & I2 in mA are : ");
