// Example 2.3 :current
clc;
close;
clear;
format('v',7)
// given :
vs1=10;//voltage in volts
i5=2;//current in amperes
i2=i5;//current
r1=1;//resistance in ohms
r2=5;//resistance in ohms
r3=5;//resistance in ohms
rl=10;//resistance in ohms
r4=5;//resistance ohms
//(r1+r2+r3)*i1-r2*i2-r3*i3=vs1 loop equaion 1
//-r2*i1-(r1+r2)*i2+(rl+r2+r3)*i3=0 loop equation 2
A=[4*(r1+r2+r3) -r2*4;-r2 (rl+r2+r3)];//making equations
B=[4*(vs1+r2*i2) ; i2*(r2+r3)];//making equations
X=A\B;//solving equations
il=i2-X(2,1);//calculating current
disp(il,"current through Rl is (from b to a),(A)=")
