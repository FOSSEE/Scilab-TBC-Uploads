clc
clear
//Input data
bhp=20//Brake horse in h.p
N=320//Speed in r.p.m
C=84//Percentage of carbon
H2=16//Percentage of hydrogen
CV=10800//Calorific value in kcal/kg
bth=30//Brake thermal efficiency in percent
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2
mH2O=18//Molecular weight of H2O

//Calculations
W=(bhp*4500)/427//Work done in kcal
Wc=(W*2)/N//Work done per cycle in kcal
qs=(Wc/(bth/100))//Heat supplied per cycle in kcal
wf=(qs/CV)//Weight of fuel used per cycle in kg
tO2=((C/100)*(mO2/mC)+(H2/100)*(mO2/(2*mH2)))//Total O2/kg fuel in kg
mw=(tO2/(23/100))//Minimum weight of air required in kg/kg fuel
aw=(mw*2)//Actual weight of air supplied in kg/kg fuel
wac=(aw*wf)//Wt. of air supplied/ cycle in kg. In textbook, it is given wrong as 0.1245 kg

//Output
printf('(a) the weight of fuel used per cycle is %3.6f kg \n (b) the actual weight of air taken in per cycle is %3.4f kg',wf,wac)
