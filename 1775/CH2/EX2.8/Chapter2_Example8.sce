//Chapter-2, Illustration 8, Page 64
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
d=0.15;//Bore in m
L=0.25;//Stroke in m
Vc=400*(10^-6);//Clearance volume in m^3
V2=Vc;//Clearance volume in m^3
c1=0.05;//Cut-off percentage 1
c2=0.08;//Cut-off percentage 2
y=1.4;//Ratio of specific heats

//CALCULATIONS
Vs=(3.147/4)*(d^2)*L;//Stroke volume in m^3
V31=V2+(c1*Vs);//Volume at the point of cut-off in m^3
rc1=V31/V2;//Cut-off ratio 1
rv=(Vc+Vs)/Vc;//Compression ratio
nth1=(1-(((rc1^y)-1)/((rv^(y-1))*y*(rc1-1))))*100;//Air standard efficiency 1
V32=V2+(c2*Vs);//Volume at the point of cut-off in m^3
rc2=V32/V2;//Cut-off ratio 2
nth2=(1-(((rc2^y)-1)/((rv^(y-1))*y*(rc2-1))))*100;//Air standard efficiency 2
pl=nth1-nth2;//Percentage loss in efficiency

//OUTPUT
mprintf('Air standard efficiency at 5 percent cut-off is %3.2f percent \n Air standard efficiency at 8 percent cut-off is %3.2f percent \n Percentage loss in efficiency is %3.2f percent',nth1,nth2,pl)





//==============================END OF PROGRAM=================================
