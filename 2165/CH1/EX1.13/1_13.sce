clc
//initialisation of variables
h=0.218//ft^3
h1=0.156//ft^3
n=0.249//lb
h2=0.178//lb
c=0.208//lb
c1=0.162//lb
w1=1//ft^3
p=150//lb/in^2
T=100//Degree C
T1=373//F
Cp=(h*0.2312)+(n*0.3237)+(c*0.4451)//C.H.U/lb
Cv=(h1*0.2312)+(h2*0.3237)+(c1*0.4451)//C.H.U//lb
R=1400*(Cp-Cv)//ft lb units
//CALCULATIONS
W=(144*p*w1)/(R*T1)//lb
//RESULTS
printf('The characteristic constant of the gas=% f lb',W)
