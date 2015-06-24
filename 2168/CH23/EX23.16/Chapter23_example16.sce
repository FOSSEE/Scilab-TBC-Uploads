clc
clear
//Input data
ihp=45//Indicated horse power in h.p
bhp=37//Brake horse power in h.p
fu=8.4//Fuel used in kg/hour
CV=10000//Calorific value in kcal/kg
Tc=[15,70]//Inlet and outlet temperatures of cylinders in degree C
cj=7//Rate of flow of cylinder jacket in kg/min
Tw=[15,55]//Inlet and outlet temperatures of water in degree C
rw=12.5//Rate of water flow in kg per minute
Te=82//Final temperature of exhaust gases in degree C
Tr=17//Room temperature in degree C
af=20//Air fuel ratio
Cm=0.24//Mean specific heat of exhaust gases in kJ/kg.K

//Calculations
q=(fu/60)*CV//Heat supplied in kcal/min
qbhp=(bhp*4500)/427//Heat equivalent of B.H.P in kcal/min
ql=(cj*(Tc(2)-Tc(1)))//Heat lost to cylinder jacket cooling water in kcal/min
qe=(rw*(Tw(2)-Tw(1)))//Heat lost by exhaust gases in kcal/min
qee=(Te-Tr)*Cm*(af+1)*fu/60//Heat of exhaust gas in kcal/min
te=(qe+qee)//Total heat lost to exhaust gases in kcal/min
hra=(q-(qbhp+ql+te))//Heat lost to radiation in kcal/min
ith=((ihp*4500)/(427*q))*100//Indicated thermal efficiency in percent
bth=((bhp*4500)/(427*q))*100//Brake thermal efficiency in percent
nm=(bhp/ihp)*100//Mechanical efficiency in percent

//Output
printf('Heat supplied is %3.0f kcal/min \n Heat equivalent of B.H.P is %3.0f kcal/min \n Heat lost to cylinder jacket cooling water is %3.0f kcal/min \n Total heat lost to exhaust gases is %3.1f kcal/min \n Heat lost to radiation is %3.1f kcal/min \n Indicated thermal efficiency is %3.1f percent \n Brake thermal efficiency is %3.1f percent \n Mechanical efficiency is %3.1f percent',q,qbhp,ql,te,hra,ith,bth,nm)
