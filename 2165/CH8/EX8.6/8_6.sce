clc
//initialisation of variables
h=12//in
h1=18//in
v=19000//B.Th.U/lb
T=12600//lb/in^2
m=90//lb/in^2
w=120//gal
t1=140//F
t2=60//F
t3=570//F
Cv=0.24//ft/lb
q=810//ft/lb
n=16.9//lb
//CALCULATIONS
H=(n/t2*v)//B.Th.U
H1=[m*%pi*(144/4)*(h1/h)*(T/t2)]/(778*2)//B.TH.U/min
H2=1750//B.Th.U
H3=(H1-H2)//B.Th.U
W=(w*10/t2)*(t1-t2)//B,Th.U
G=((q+n)/(t2))*(t3-t2)*Cv//B.TH.U
//RESULTS
printf('The heat balance showing heat quantities received and the discharged per min=% f B.TH.U',G)
