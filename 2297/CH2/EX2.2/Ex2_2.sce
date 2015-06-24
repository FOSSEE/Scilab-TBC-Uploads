// Example 2.2 :current
clc;
close;
clear;
// given :
vs1=72;//voltage in volts
vs2=40;//voltage in volts
R1=36;//resistance in ohm
R2=10;//resistance in ohm
ig=2;//current in amperes
Rx=8;//resistance in ohm
//(va-72)/36+(va-40)/10 -2 +va/8=0 node equation at 1
va=((R2*Rx*vs1)+(R1*Rx*vs2)+(R1*R2*Rx*ig))/((R2*Rx)+(R1*Rx)+(R1*R2));//voltage in volts
ix1=va/Rx;//current in amperes
//(R1+R2)*I1-R2*I2+vs2=vs1 loop equation 1
//R2*I2-R2*I1+Ix*Rx=vs2 loop equation 2
//Ix=I2+2
A=[R1+R2 -R2;-R2 R2+Rx];//making equations
B=[vs1-vs2;vs2-2*Rx];//making equations
X=A\B;//solving equations
ix2=X(2,1)+ig;//current in amperes
disp(ix1,"current through Rx is(by node voltage method), (A)=")
disp(ix2,"current through Rx is (by loop current method),(A) =")
