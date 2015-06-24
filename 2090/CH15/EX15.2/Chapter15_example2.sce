clc
clear
//Input data
p=1.013;//The pressure at the sea level in bar
T=283;//The temperature at the sea level in K
bp=275;//Brake power in kW
N=1800;//The speed of the engine in rpm
a=20;//Air fuel ratio 
R=287;//The real gas constant in J/kgK
bsfc=0.24;//Brake specific fuel consumption in kg/kWh
nv=80;//Volumetric efficiency in percent
p2=0.75;//The atmospheric pressure at altitude in bar
P=9;//The power consumed by supercharger of the total power produced by the engine in percent
T2=303;//The temperature of air leaving the supercharger in K

//Calculations
mf=[bsfc*bp]/60;//Mass of fuel consumed in kg/min
ma1=mf*(a);//Mass of air used in kg/min
ma=(2/N)*ma1;//Actual mass of air taken in per cycle in kg/cycle
dai=(p*10^5)/(R*T);//The density of air in kg/m^3
Vd=(ma/(dai*(nv/100)));//Volume displaced by the piston in m^3
pmb=(bp*2*60*1000)/(Vd*N*10^5);//Brake mean effective pressure in bar
GP=bp/(1-0.09);//Gross power in kW
ma2=(ma1/bp)*GP;//The mass flow rate of air for gross power in kg/min
ma1=(ma2*2)/N;//Mass of air required for gross power per cycle in kg/cycle
p21=[(R*T2*ma1)/((nv/100)*Vd)]/10^5;//The pressure at the outlet condition of the supercharger in bar
pi=p21-p2;//Increase in air pressure required in the supercharger in bar

//Output
printf('(a) The engine capacity Vd = %3.4f m^3 \n The bmep of the unsupercharged engine = %3.3f bar \n (b) Increase in air pressure required in the supercharged = %3.3f bar ',Vd,pmb,pi)

