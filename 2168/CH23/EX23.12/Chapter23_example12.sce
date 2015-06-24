clc
clear
//Input data
gu=0.135//Gas used in m^3/min at N.T.P
CV=3990//Calorific value of gas in kcal/m^3 at N.T.P
dg=0.64//Density of gas in kg/m^3 at N.T.P
au=1.52//Air used in kg/min
C=0.24//Specific heat of exhaust gases in kJ/kg.K
Te=397+273//Temperature of exhaust gases in K
Tr=17+273//Room temperature in K
cw=6//Cooling water per minute in kg
rT=27.5//Rise in temperature in degree C
ihp=12.3//Indicated horse power in h.p
bhp=10.2//Brake horse power in h.p

//Calculations
qs=(gu*CV*60)//Heat supplied in kcal/hour
qbhp=((bhp*4500*60)/427)//Heat equivalent of B.H.P in kcal/hr
ql=(cw*60*rT)//Heat lost in jacket cooling water in kcal/hr
mg=(gu*dg)//Mass of gas used per minute in kg
me=(mg+au)//Mass of exhaust gases per minute in kg
qe=(me*C*(Te-Tr)*60)//Heat carried away by exhaust gases in kcal/hour
qun=(qs-(qbhp+ql+qe))//Heat unaccounted in kcal/hour

//Output
printf('Heat supplied is %3.0f kcal/hour \n Heat equivalent of B.H.P is %3.0f kcal/hr \n Heat lost in jacket cooling water is %3.0f kcal/hr \n Heat carried away by exhaust gases is %3.0f kcal/hour \n Heat unaccounted is %3.0f kcal/hour',qs,qbhp,ql,qe,qun)
