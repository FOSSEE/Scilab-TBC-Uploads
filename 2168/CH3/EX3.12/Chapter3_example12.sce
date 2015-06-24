clc
clear
//Input data
d=0.2//Diameter of the cylinder in m
L=0.4//Stroke in m
r=13.5//Compression ratio
a=1.42//Explosion ratio
s=5.1//Cut off occurs at 5.1 percent of the stroke
g=1.4//Ratio of specific heats for air

//Calculations
Vs=(3.14/4)*d^2*L*10^-6//Stroke volume in c.c
Vc=Vs/r//Clearance volume in c.c
k=(((s/100)*Vs)+Vc)/Vc//Cut off ratio
ASE=(1-((1/(r^(g-1)))*((a*k^g-1)/((a-1)+a*g*(k-1)))))*100//Air standard efficiency in percent

//Output
printf('The air standard efficiency of the engine is %3.1f percent',ASE)

