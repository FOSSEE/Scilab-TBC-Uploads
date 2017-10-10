
clc
//solution
//given
//ref fig 10.21
P=200*10^3//n
T=75//N/mm^2
s=10//mm
//a+b=200//mm
//let la=length of weld at top
//lb=length of weld at bottom
//l=la+lb//total length of belt
//P=0.707*s*l*T
l=P/(0.707*s*T)//mm
b=[(200-10)*10*95+(150*10*5)]/(190*10+1500)//mm
a=200-b//mm
la=l*b/(a+b)//mm
lb=l-la//mm
printf("the value of length at top and bottom is,%f mm\n,%f mm",la,lb)
