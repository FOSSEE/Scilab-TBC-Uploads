// Example 1.85

clear; clc; close;

format('v',8);
// Given data
VL=440;//in volt
f=50;//in Hz
X2byR2=3;//ratio
TmByTfl=4;//ratio

//Calculations
Sm=1/X2byR2;//Maximum slip
//Formula : TmByTfl=(Sm^2+S^2)/(2*S*Sm)
P=[9 -24 1];//polynomial for value of S by avove equation
S=roots(P);
S=S(2);//discarding value greater than 1
disp(S,"(i) Full load slip : ");
TstByTfl=(Sm^2+S^2)/(S*(1+Sm^2));//ratio
disp(TstByTfl,"(ii) Ratio of starting torque to full load torque : ");
V1=VL/sqrt(3);//in volt
//Tst=Tfl : K*V11^2R2/(R2^2+X2^2)=R*V1*S*R2/(R2^2+(S*X2)^2)
V11=sqrt(S*V1^2*(1+X2byR2^2)/(1+(S*X2byR2)^2));//in volt
Linevoltage=V11*sqrt(3);//in volt
disp(Linevoltage,"(c) Line Voltage in Volt : ");
//Note : Answer of line voltage is wrong in the book due to calculation mistake.
