clc
//initialisation of variables
v=0.020//cu ft
p=200//psia
t=1600//F
v1=0.028//cu ft
q=53.35//lb
w=144//ft
p1=2060//cu ft
p2=0.2027//ft
Cv=0.1715//ft
t1=778//F
//CALCULATIONS
V=p*(v1/v)^1.2//psia
W=(w*(V*v1-p*v))/(1+(1.2))//ft-lb
W1=(w*p*v)/(q*p1)//lb
T=p1*(v1/v)^2.2//R
Q=W1*p2*(T-p1)//Btu
U=W1*Cv*(T-p1)//Btu
Q1=U+(W/t1)//Btu
//RESULTS
printf('The work done and the heat added treating the cylinder s contents as air=% f Btu',Q1)
