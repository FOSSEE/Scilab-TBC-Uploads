clc
clear
//Input data
n=4//Number of cylinders
N=2000//Speed in r.p.m
m=13.15//Mass of fuel in kg/hour
Vd=655.5//Displacement volume in c.c
da=1.2//Density of air in kg/m^3
d=12.7//Manometer depression in cm
//Qa=0.231*sqrt(ha); Qa is the flow rate in cu.m/min and ha is the pressure difference in metres

//Calculations
Qa=(0.231*sqrt(((d*1000)/da)/100))//Flow rate in cu.m/min
Wa=(Qa*da)//Weight of air in kg/min
Va=(Qa*(2/N)*(1/n))*10^6//Volume of air drawn in per cycle per cylinder in c.c
nv=(Va/Vd)*100//Volumetric efficiency in percent
af=(Wa/(m/60))//Air fuel ratio

//Output
printf('(a) the weight of air drawn is %3.3f kg/min \n (b) volumetric efficiency taking air into account is %3.1f percent \n (c) the air-fuel ratio is %i',Wa,nv,af)
