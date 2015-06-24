clc
clear
//Input data
n=9//Number of cylinder
d=0.145//Bore in m
l=0.19//Stroke in m
r=5.9//Compression ratio
bhp=460//Brake horse power in B.H.P
N=2000//Speed in r.p.m
x=20//Percentage rich in mixture
CV=11200//Calorific value in kcal/kg
pC=85.3//Percentage of carbon
pH2=14.7//Percentage of Hydrogen
nv=70//Volumetric efficiency in percent
T=15+273//Temperature in K
nm=90//Mechanical efficiency in percent
wO2=23.3//Percentage of oxygen by weight in air
da=1.29//Density of air in kg/m^3
mC=12//Molecular weight of carbon
mO2=32//Molecular weight of O2
mH2=2//Molecular weight of H2

//Calculations
hihp=((bhp/(nm/100))*(4500/427))//Heat equivalent in kcal
Vs=((3.14/4)*d^2*l*(N/2)*n)//Swept volume in c.m per min
cw=(Vs/da)//Charge weight of air per minute in kg
ma=(100/wO2)*((pC/100)*(mO2/mC)+(pH2/100)*(mO2/(2*mH2)))//Wt. of air required per kg of fuel in kg
mf=(cw/ma)//Minimum fuel inkg
ith=(hihp/(mf*(100+x)/100*CV))*100//Indicated thermal efficiciency in percent'

//Output
printf('Indicated thermal efficiency of the engine is %3.1f percent',ith)
