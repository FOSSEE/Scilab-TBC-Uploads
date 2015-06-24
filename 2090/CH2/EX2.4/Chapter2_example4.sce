clc
clear
//Input data
d=0.2;//The diameter of the cylinder bore in m
L=0.3;//The length of the stroke in m
P1=1;//The pressure at the beginning of the compression in bar
T1=300;//The temperature at the beginning of the compression in K
r=16;//Compression ratio
V=0.08;//Cutt off takes place at 8& of the stroke
pi=3.141;//Mathematical constant value of pi
R=0.287;//Real gas constant in kJ/kgK
g=1.4;//Isentropic index
Cp=1.005;//Specific heat at constant prassure in kJ/kgK
Cv=0.718;//specific heat at constant volume for air in kJ/kgK

//Calculations
Vs=(pi/4)*d^2*L;//Swept volume in m^3
Vc=Vs/(r-1);//Clearance volume in m^3
V2=Vc;//Volume at point 2 in m^3
V1=Vs+Vc;//Volume at point 1 in m^3
m=(P1*10^5*V1)/(R*T1);//The amount of mass in kg
P2=P1*(r^g);//Pressure at point 2 in bar
P3=P2;//Pressure at point 3 in bar
T2=T1*r^(g-1);//Temperature at point 2 in K
V3=(V*Vs)+V2;//Volume at point 3 in m^3
C=V3/V2;//Cut off ratio
T3=C*T2;//Temperature at point 3 in K
P4=P3*(C/r)^g;//Pressure at the point 4 in bar
T4=T3*(C/r)^(g-1);//Temperature at point 4 in K
V4=V1;//Volume at point 4 in m^3
Q1=[m*Cp*(T3-T2)]/1000;//Heat supplied in kJ
Q2=[m*Cv*(T4-T1)]/1000;//Heat rejected in kJ
W=[Q1-Q2];//Work done per cycle in kJ
na=(W/Q1)*100;//Air standard efficiency
Pm=[W*1000/Vs]/10^5;//Mean effective pressure in bar

//Output
printf('(a) Volume at point 2 = %3.6f m^3 \n Volume at point 1 = %3.6f m^3 \n Pressure at point 2 = %3.1f bar \n Temperature at point 2 = %3.1f K \n Temperature at point 3 = %3.0f K \n Pressure at point 4 = %3.3f bar \n Temperature at point 4 = %3.1f K \n Volume at point 4 = %3.6f m^3 \n (b) cut off ratio = %3.2f \n (c) Work done per cycle = %3.3f kJ \n (d) air standard efficiency = %3.2f percent \n (e)Mean effective pressure = %3.2f bar ',V2,V1,P2,T2,T3,P4,T4,V4,C,W,na,Pm)
