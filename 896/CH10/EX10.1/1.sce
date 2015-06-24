clc
//Example 10.1
//Calculate the efficiency of a pump
Q=50//gal/min
P1=30//psia 0r lbf/in^2
P2=100//psia 0r lbf/in^2
dP=P2-P1//psia 0r lbf/in^2
power=2.8//hp
//1 ft = 12 in
//1 hp.min = 33000 lbf.ft
//1 gal = 231 in^3
eta=(Q*dP/power)*(1/33000)*231*(1/12)//dimentionless
printf("The efficiency of the pump is %f",eta);