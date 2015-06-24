//radius of the outer conductor
//given
clc
C=70D-12//F/m
Zo=75//ohm
L=Zo^2*C//inductance
epsilon_r=2.3
a=0.292//mm//radius of inner conductor
b=a*10^(Zo*sqrt(epsilon_r)/138)//Zo=(138/sqrt(epsilon_r))*log(b/a)
b=round(b*1d+4)/1d+4///rounding off decimals
disp(b,'the radius of the outer conductor')
