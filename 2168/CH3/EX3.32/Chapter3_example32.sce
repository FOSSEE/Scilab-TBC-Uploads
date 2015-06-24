clc
clear
//Input data
Vs=9.45//Swept volume in litres
Vc=2.32//Clearance volume in litres
m=4.25//Consumption of gas per hour in cu.m
N=165//Speed in r.p.m
bhp=5.62//Brake horse power in h.p
nm=73.4//Mechanical efficiency in percent
CV=3500//Calorific value in kcal per cubic meter
vn=0.87//Volumetric efficiency
g=1.4//Ratio of specific heats

//Calculations
tV=(Vs+Vc)*1000//Total volume in c.c
rc=(tV/Vc)//Compression ratio
na=(1-(1/rc^(g-1)))*100//Air atandard efficiency in percent
W=(bhp*4500)/427//Workdone per minute in kcal
Iw=(W/(nm/100))//Indicated work in kcal/min
q=(m/60)*CV//Heat supplied in kcal/min
ith=(Iw/q)*100//Indicated thermal efficiency in percent
rn=(ith/na)*100//Relative efficiency in percent
Vm=(Vs*1000)*vn//Volume of mixture taken in per stroke in c.c
Vg=(m*2*10^6)/(60*N)//Volume of gas taken in per stroke in c.c
Va=(Vm-Vg)//Volume of air taken in per stroke in c.c
agr=(Va/Vg)//Air gas ratio
CVc=(CV/(agr+1))//Calorific value of charge in kcal

//Output
printf('Ratio of air to gas used is %3.2f \n Calorific value of 1 cu.m of the mixture in the cylinder is %3.1f kcal',agr,CVc)
