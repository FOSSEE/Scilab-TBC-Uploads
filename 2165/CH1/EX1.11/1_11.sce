clc
//initialisation of variables
v=2//ft^3
p=1100//lb/in^2
t1=44//Degree C
t2=15//Degree C
p1=300//lb/in^2
t3=3//Degree c
Cv=0.17//ft/lb
T=273//F
R=96//ft lb
p3=300//lb/in^2
n=1.12//lb
gama=1.404//lb
W=[(144*p*v)/(T+t1)]/R//lb
//CALCULATIONS
Wc=W*Cv*(t1-t2)//C.H.U
p2=p*(T+t2)/(T+t1)//lb /in^2
A=(144*p3*v)/(R*276)//lb
W1=(A/W)*v//ft^3
H=[(gama-n)/(gama-1)]*[144*(p*0.65-p1*v)/(n-1)]//ft lb
H1=H/1400//C.H.u
//RESULTS
printf('the heat was lost by all the air in the vessel before leakage began=% f C.H.U',Wc)
printf('the heat was lost or gainned leakage by the air=% f C.H .U',H1)
