clc
clear
//Input data
d=20;//Cylinder bore diameter in cm
L=25;//Stroke length in cm
Vc=1570;//The clearance volume in cm^3
P1=1;//Pressure at the beginning of the compression in bar
T1=300;//Temperature at the beginning of the compression in K
T3=1673;//The maximum temperature of the cycle in K
pi=3.141;//Mathematical constant value of pi
Cv=0.718;//specific heat at constant volume for air in kJ/kgK
R=0.287;//Real gas constant in kJ/kgK
g=1.4;//Isentropic index
c=500;//Number of cycles per minute

//Calculations
Vs=(pi/4)*d^2*L;//Swept volume in cm^3
V1=Vs+Vc;//According to pv diagram Total volume i.e sum of swept and clearance volume in cm^3
V2=Vc;//Volume according to pv diagram in cm^3
r=V1/V2;//Compression ratio
T2=T1*r^(g-1);//In isentropic process, Temperature at point 2 in degree centigrade
P2=P1*r^g;//In isentropic process, Pressure at point 2 in bar
P3=P2*(T3/T2);//In constant volume, process Pressure at point 3 in bar
T4=T3*(1/r)^(g-1);//In isentropic process, Temperature at point 4 in degree centigrade
P4=P3*(1/r)^(g);//In isentropic process, Pressure at point 4 in bar
no=(1-(1/r)^(g-1))*100;//Air standard efficiency of otto cycle
Q1=Cv*(T3-T2);//Heat supplied in kJ/kg
Q2=Cv*(T4-T1);//Heat rejected in kJ/kg
W=Q1-Q2;//Work done per unit mass in kJ/kg
m=[(P1*10^5*V1*10^-6)/(R*T1)]/1000;//The amount of mass in kg
W1=W*m;//Work done in kJ
pm=[(W1*10^3)/(Vs*10^-6)]/10^5;//Mean effective pressure in N/m^2
P=W1*(c/60);//Power developed in kW

//Output
printf('Temperature at point 2 = %3.1f K \n Pressure at point 2 = %3.3f bar \n Pressure at point 3 = %3.2f bar \n Temperature at point 4 = %3.0f K \n Pressure at point 4 = %3.3f bar \n Air standard efficiency of otto cycle = %3.4f percent \n Work done = %3.2f kJ \n Mean effective pressure = %3.3f bar \n Power developed = %3.1f kW ',T2,P2,P3,T4,P4,no,W1,pm,P)


