clc
clear
//Input data
d=20//Diameter in cm
l=40//Stroke in cm
mep=5.95//Mean effective pressure in kg/cm^2
bt=41.5//Brake torque in kg.m
N=250//Speed in r.p.m
oc=4.2//Oil consumption in kg per hour
CV=11300//Calorific value of fuel in kcal/kg
jcw=4.5//Jacket cooling water in kg/min
rT=45//Rise in temperature in degree C
au=31//Air used in kg
Te=420//Temperature of exhaust gases in degree C
Tr=20//Room temperature in degree C
Cm=0.24//Mean specific heat of exhaust gases in kJ/kg.K

//Calculations
ihp=(mep*(l/100)*(3.14/4)*d^2*(N/2))/4500//Indicated horse power in h.p
bhp=(bt*2*3.14*N)/4500//Brake horse power in h.p
q=(oc*CV)//Heat supplied in kcal/hour
qbhp=(bhp*4500*60)/427//Heat equivalent of B.H.P in kcal/hour
qfhp=((ihp-bhp)*4500*60)/427//Heat equivalent F.H.P in kcal/hour
qc=(jcw*rT*60)//Heat lost in cooling water in kcal/hour
qe=(oc*32*Cm*(Te-Tr))//Heat lost in exhaust gases in kcal/hour
hu=(q-(qbhp+qfhp+qc+qe))//Heat unaccounted in kcal/hour

//Output
printf('Indicated horse power is %3.1f h.p \n Brake horse power is %3.2f h.p \n Heat supplied is %3.0f kcal/hour \n Heat equivalent of B.H.P is %3.0f kcal/hour \n Heat equivalent of F.H.P is %3.0f kcal/hour \n Heat lost in cooling water is %3.0f kcal/hour \n Heat lost in exhaust gases is %3.0f kcal/hour \n Heat unaccounted is %3.0f kcal/hour',ihp,bhp,q,qbhp,qfhp,qc,qe,hu)
