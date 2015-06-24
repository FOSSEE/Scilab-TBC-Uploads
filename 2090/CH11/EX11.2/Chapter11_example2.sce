clc
clear
//Input data
d=0.12;//The bore diameter of the engine in m
l=0.15;//The stroke length of the engine in m
r=16;//The compression ratio 
N=2000;//The speed of the engine in rpm
mf=(240/60);//Actual air flow per min in kg/min
T=300;//Air inlet temperature in K
p=1.025;//Exhaust pressure in bar
pi=3.141;//Mathematical constant of pi
R=287;//Real gas constant in J/kg

//Calculations
da=(p*10^5)/(R*T);//The density of air in kg/m^3
Vs=[(pi)*(d^2)*l]/4;//Swept volume in m^3
V=(r/(r-1))*Vs;//Total cylinder volume in m^3
m=da*V;//Ideal mass in total cylinder volume in kg per cycle
m1=m*N;//Ideal mass per unit time in kg/min
Rsc=mf/m1;//Scavenging ratio
nsc=[(1-exp(-Rsc))*100];//Scavenging efficiency in percent
ntr=[(nsc/100)/Rsc]*100;//Trapping efficiency in percent

//Output
printf('(a) The scavenging ratio = %3.3f \n (b) The scavenging efficiency = %3.1f percent \n (c) The trapping efficiency = %3.1f percent ',Rsc,nsc,ntr)
