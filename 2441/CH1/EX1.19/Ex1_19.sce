//exa 1.19 page 25
clc;clear;close;
format('v',5);
V=400;//V
s1=0.03;//initial slip
delV=1;//%///Voltage Drop
R1=0.290;//ohm/phase
R2=0.15;//ohm/phase
X=0.7;//ohm/phase(X1+X2)
//V1^2*s1=V2^2*s2 for speed independent torque
//taking for calculating s2
V1=1;//V 
V2=V1-V1*delV/100;//V
s2=V1^2/V2^2*s1;//slip
I2ByI1=sqrt([R1+R2/s1]^2+X^2)/sqrt([R1+R2/s2]^2+X^2)*(V2/V1)
delI=(I2ByI1-1)*100;//%//Current Increase
disp(delI,"1% drop in Voltage increases current by(%)");
//P=(R1+R2/s)*I^2
P2ByP1=(R1+R2/s2)/(R1+R2/s1)*I2ByI1^2;//ratio
delP=(1-P2ByP1)*100;//%//Power Decrease
format('v',4);
disp(delP,"1% drop in Voltage decreases power input by(%)");
//Answer in the textbook is not accurate.
