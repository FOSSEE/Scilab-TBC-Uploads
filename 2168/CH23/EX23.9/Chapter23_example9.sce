clc
clear
//Input data
d=27//Diameter in cm
l=45//Stroke in cm
db=1.62//Effective diameter of the brake in m
t=(38*60+30)//Test duration in sec
CV=4650//Calorific value in kcal/m^3 at N.T.P
n=8080//Total no. of revolutions
en=3230//Total number of explosions
p=5.75//Mean effective pressure in kg/cm^2
V=7.7//Gas used in m^3
T=15+273//Atmospheric temperature in K
pg=135//pressure of gas in mm of water above atmospheric pressure
hb=750//Height of barometer in mm of Hg
L=92//Net load on brake in kg
w=183//Weigh of jacket cooling water in kg
Tc=47//Cooling water temperature rise in degree C

//Calculations
ihp=(p*(l/100)*(3.14/4)*d^2*en)/(4500*(t/60))//I.H.P in h.p
bhp=(L*3.14*db*n)/(4500*(t/60))//B.H.P in h.p
pa=(hb+(pg/13))//Pressure of gas supplied in mm of Hg
Vg=(V*(273/T)*(pa/760))//Volume of gas used at N.T.P in m^3
q=(Vg*CV)/(t/60)//Heat supplied per minute in kcal
qbhp=(bhp*4500)/427//Heat equivalent of B.H.P in kcal/min
qc=(w/(t/60))*Tc//Heat lost to jacket cooling water in kcal/min
qra=(q-(qbhp+qc))//Heat lost to exhaust, etc in kcal/min

//Output
printf('Heat supplied is %3.1f kcal/min \n Heat equivalent of B.H.P is %3.0f kcal/min \n Heat lost to jacket cooling water is %3.1f kcal/min \n Heat lost to exhaust radiation etc. is %3.1f kcal/min',q,qbhp,qc,qra)
