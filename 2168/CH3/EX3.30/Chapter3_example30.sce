clc
clear
//Input data
N=210//Speed in r.p.m
d=0.3//Diameter of the piston in m
L=0.4//Stroke in m
v=2.5//Clearance volume is 2.5% of the swept volume. But in textbook it is given wrong as 25%
CO=19.7//Percentage of CO gas
H2=28.8//Percentage of H2 gas
CO2=14.4//Percentage of CO2 gas
N2=37.1//Percentage of N2 gas
x=0.875//Total mixture at N.T.P admitted per suction stroke is 0.875 of the total volume behind the piston at the end of the stroke
tn=35//Thermal efficiency in percent
CVH2=13200//Calorific value of H2 per kg in kcal
CVC=2540//Calorific value of carbon burning from CO to CO2 in kcal/kg
de=1.293//Density of air in kg/m^3
mC=12//Molecular weight of carbon
mO2=32//Molecular weight of O2
mH2=2//Molecular weight of H2
mCO=28//Molecular weight of CO

//Calculations
a=((100/21)*((CO2/100)+((CO/2)/100)))//Air per cu.m of gas in cu.m
Vm=(a+1)//Volume of mixture per cu.m of gas in cu.m
Vs=((3.14/4)*d^2*L)//Swept volume in cu.m
Vc=(Vs*v)/100//Clearance volume in cu.m
V=Vc+Vs//Total volume in cu.m
VC=V*x//Volume of charge admitted per stroke in cu.m
VM=VC*(N/2)//Charge volume per minute in cu.m
VG=(VM/Vm)//cu.m of gas per minute
vH2=(VG*(H2/100))//Volume of H2 per minute in cu.m
vCO=(VG*(CO/100))//Volume of CO per minute in cu.m
CVH2cum=(mH2*CVH2)/(vH2*1000)//Calorific value of H2 per cu.m in kcal
CVCO=(CVC*(2*mC)/(2*mCO))//Calorific value of CO per kg in kcal
CVCOcum=(mCO*CVCO)/(vH2*1000)//Calorific value of CO per cu.m in kcal
qH2=(16.09*CVH2cum)//Heat in charge due to H2 in kcal
qCO=(11*CVCOcum)//Heat in charge due to CO in kcal
qt=(qH2+qCO)//Heat supplied per minute in kcal
qu=(qt*(tn/100))//Heat utilised in kcal
hp=(qu*427)/4500//H.P developed

//Output
printf('Maximum horse power that can be developed is %3.1f H.P',hp)
