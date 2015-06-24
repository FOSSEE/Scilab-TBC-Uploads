clc
clear
//Input data
d=11.25//Bore in cm
l=15//Stroke in cm
r=7//Compression ratio
N=1800//Speed in r.p.m
a=4.5//Air supply in kg/min
Ta=72+273//Temperature of air in K
af=14.3//Air fuel ratio
ep=1//Exhaust pressure in kg/cm^2
R=29.27//Characteristic gas constant in kg.m/kg.degree C

//Calculations
Vc=((r/(r-1))*(3.14/4)*(d/100)^2*(l/100))//Swept volume in m^3
Wa=(Vc*N*ep*10^4)/(R*Ta)//Ideal air capacity in kg/min
sr=(a/Wa)//Scavenging ratio
sn=(1-exp(-sr))//Scavenging efficiency 
nt=(sn/sr)//Trapping efficiency

//Output
printf('(a) Ideal air capacity is %3.2f kg/min \n (b) Scavenging ratio is %3.2f \n (c) Scavenging efficiency is %3.3f \n (d) Trapping efficiency is %3.2f',Wa,sr,sn,nt)
