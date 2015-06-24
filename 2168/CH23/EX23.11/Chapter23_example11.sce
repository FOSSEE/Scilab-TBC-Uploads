clc
clear
//Input data
d=18//Diameter in cm
l=24//Stroke in cm
t=30//Duration of trail in min
r=9000//Total number of revolutins
e=4445//Total number of explosions
mep=5.85//Mean effective pressure in kg/cm^2
Nl=40//Net load on brake wheel in kg
ed=1//Effective diameter of brake wheel in meter
tg=2.3//Total gas used at N.T.P in m^3
CV=4600//Calorific value of gas in kcal/m^3 at N.T.P
ta=36//Total air used in m^3
pa=720//Pressure of air in mm of Hg
Ta=18+273//Temperature of air in K
da=1.293//Density of air at N.T.P in kg/m^3
Te=350+273//Temperature of exhaust gases in K
Tr=18+273//Room temperature in K
Cp=0.24//Specific heat of exhaust gases in kJ/kg.K
twc=81.5//Total weight of cylinder jacket cooling water in kg
dT=33//Rise in temperature of jacket cooling water in degree C
R=29.45//Characteristic gas constant in kg.m/kg.degree C

//Calculations
ihp=(mep*(l/100)*(3.14/4)*d^2*(e/t))/4500//Indicated horse power in h.p
bhp=(Nl*3.14*r*ed)/(4500*t)//Brake horse power in h.p
qs=(tg/t)*CV//Heat supplied at N.T.P in kcal
qbhp=(bhp*4500)/427//Heat equivalent of B.H.P in kcal/min
ql=(twc/t)*dT//Heat lost to cylinder jacket cooling water in kcal/min
VA=(ta*(273/Ta)*(pa/760))//Volume of air used at N.T.P in m^3
WA=(VA*da)/t//Weight of air used per min in kg
WG=(1.03*tg*10^4)/(R*273)//Weight of gas in kg
Wg=(WG/t)//Weight of gas per minute in kg
We=(WA+Wg)//Total weight of exhaust gases in kg
qle=(We*(Te-Tr)*Cp)//Heat lost of exhaust gases in kcal/min
qra=(qs-(qbhp+ql+qle))//Heat lost by radiation in kcal/min
nm=(bhp/ihp)*100//Mechanical efficiency in percent
ith=((ihp*4500)/(427*qs))*100//Indicated thermal efficiency in percent

//Output
printf('         HEAT BALANCE SHEET\n          ------------------ \n\n Heat supplied per minute is %3.1f kcal/min \n\n Heat expenditure               (kcal per minute) \n 1.Heat equivalent of B.H.P is          %3.1f \n 2.Heat lost to jacket cooling water is %3.1f \n 3.Heat lost in exhaust gases is        %3.1f \n 4.Heat lost by radiation, etc., is     %3.1f \n                                      --------\n                                       %3.1f\n                                      --------',qs,qbhp,ql,qle,qra,qs)
