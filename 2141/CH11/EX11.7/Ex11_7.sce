
clc
//initialisation of variables
Tr=537/344 //lbf/in^2
Pr=1200/637 //lbf/in^2
P=1200//lbf/in^2
T1r=537/508 //lbf/in^2
P1r=P/742//lbf/in^2
Z=0.88 //lbf/in^2
ZC2H4=0.35 //lbf/in^2
V=10 //ft^3
T=537 //F
R=1545 //F
y=0.75 //ft^3/lb
y1=0.25 //ft^3/lb
m=16//ft^3/lbm
m1=28//ft^3/lbm
Pr1=900/673//lbf/in^2
Pr2=300/742//lbf/in^2
Tr1=T/344//F
Tr2=T/508 //F
Z1=0.91 //lbm
g=144//ft
//CALCULATIONS
vCH4=(Z*R*T)/(P*g)//ft^3/lb mole
vC2H4=(ZC2H4*R*T)/(P*g)//ft^3/lb mole
v=y*(vCH4)+y*(vC2H4)//ft^3/lb mole
M=y*(m)+y1*(m1)//lbf/in^2
v1=v/M//ft^3/lbm
m2=(V/v1)//lbm
PCH4=y*(P)//lbf/in^2
mCH4=(PCH4*g*V)/((R/m)*T)//lbm
PC2H4=y1*(P)//lbf/in^2
mC2H4=(PC2H4*g*V)/((R/m1)*T)//lbm
M1=mCH4+mC2H4//lbm
z=y*(Z1)+y1*(Z)//lbm
M2=(P*g*V)/(z*(R/M)*T)//lbm
//RESULTS
printf('The partial pressure of the component and the temperature of the mixture=% f lbm',M2)
