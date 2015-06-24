//Chapter-2, Illustration 13, Page 69
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
d=0.2;//Bore in m
L=0.5;//Stroke in m
c=0.06;//Cut-off percentage
y=1.4;//Ratio of specific heats
rv=15;//Compression ratio
rp=1.4;//Pressure ratio

//CALCULATIONS
Vs=(3.147/4)*(d^2)*L;//Stroke volume in m^3
DV=c*Vs;//Difference in volumes at points 4 and 3
V3=Vs/(rv-1);//Specific volume at point 3 in m^3
V4=V3+DV;//Specific volume at point 4 in m^3
rc=V4/V3;//Cut-off ratio
ntd=(1-((rp*(rc^y)-1)/((rv^(y-1)*((rp-1)+(y*rp*(rc-1)))))))*100;//Ideal efficiency

//OUTPUT
mprintf('Ideal efficiency of the engine is %3.1f percent',ntd)





//==============================END OF PROGRAM=================================
