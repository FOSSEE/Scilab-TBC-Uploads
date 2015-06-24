clc
//initialisation of variables
A=28.1//in Hg vacuum
a=0.93//lb/in^2
T=33//Degree
p=0.729//lb/in^2
P=-p+a//lb/in^2
p1=120000//lb
p2=28.1//in
a1=0.9//ln
p3=1000//lb
t=15//degree C
A1=[a1*(p1/(60*p3))]//lb/mim
v=(A1*96*306)/(144*P)//ft^3 of air per min
V=37.3+a1*610//C.H.U/lb
//CALCULATIONS
H=(V-T)//C.H.U
W=(H/t)*(p1/60)//gal/min
//RESULTS
printf('The water per minute in cubic feet per minute passing to air extractor=% f gal/min',W)
