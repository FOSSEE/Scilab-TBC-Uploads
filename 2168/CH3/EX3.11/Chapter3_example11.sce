clc
clear
d=0.25//Diameter of the cylinder in m
L=0.35//Stroke in m
Cv=1500//Clearance volume in c.c
s=5//cut off ratio takes place at 5 percent of stroke
a=1.4//Explosion ratio
g=1.4//Ratio of specific heats for air

//Calculations
Vs=(3.14/4)*d^2*L//Stroke volume in m^3
r=(Vs*10^6+Cv)/Cv//Compression ratio
k=(Cv+((s/100)*Vs*10^6))/Cv//Cut off ratio
na=(1-((1/(r^(g-1)))*((a*k^g-1)/((a-1)+a*g*(k-1)))))*100//Air standard efficiency in percent

//Output
printf('The air standard efficiency of the engine is %3.1f percent',na)
