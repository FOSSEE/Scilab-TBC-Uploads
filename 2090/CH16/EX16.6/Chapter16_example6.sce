clc
clear
//Input data
n=8;//Number of cylinders
d=0.08;//The diameter of the bore in m
L=0.1;//The length of the stroke in m
N=4500;//The speed of the engine in rpm 
dy=0.55;//The dynamometer readings in m
w=40;//The weight of the dynamometer scale reading in kg
c=100;//Fuel consumption in cc
t=9.5;//Time taken for fuel consumption in s
CV=44000;//The calorific value of the fuel in kJ/kg
p=1;//The atmospheric air pressure in bar
T=300;//The atmospheric air temperature in K
pi=3.141;//Mathematical constant of pi
ma=6;//Mass flow rate of air in kg/min
g=0.7;//Specific gravity of the fuel 
Vc=65;//The clearance volume of each cylinder in cc
R=287;//Real gas constant in J/kgK
g=1.4;//Isentropic index

//Calculations
bp=(2*pi*N*dy*w*9.81)/(60*1000);//The brake power in kW
bmep=[(bp*1000*60)/(L*(pi/4)*d^2*(N/2)*n)]/10^5;//The brake mean effective pressure in bar
mf=(c*g*3600)/(t*2*1000);//The mass flow rate of fuel in kg/h
bsfc=(mf/bp);//Brake specific fuel consumption in kg/kWh
bsac=(ma*60)/bp;//Brake specific air consumption in kg/kWh
a=bsac/bsfc;//Air fuel ratio
nb=((bp*3600)/(mf*CV))*100;//The brake thermal efficiency in percent
Va=(ma*R*T)/(p*10^5);//The volume flow rate of air at intake condition in m^3/min
Vs=(pi/4)*d^2*L*(N/2)*n;//The swept volume per minute in m^3/min
nv=(Va/Vs)*100;//Volumetric efficiency in percent
Vs1=[(pi/4)*d^2*L]*10^6;//Swept volume per cylinder in cc
cr=(Vs1+Vc)/Vc;//Compression ratio 
na=[1-(1/cr)^(g-1)]*100;//Air standard efficiency in percent 
re=[(nb)/(na)]*100;//Relative efficiency in percent

//Output
printf( 'The brake power = %3.1f kW \n The brake mean effective pressure = %3.3f bar \n The brake specific fuel consumption = %3.3f kg/kWh \n The brake specific air consumption = %3.2f kg/kWh \n The air fuel ratio = %3.2f \n The brake thermal efficiency = %3.1f percent \n The volumetric efficiency = %3.1f percent \n The relative efficiency = %3.1f percent ',bp,bmep,bsfc,bsac,a,nb,nv,re)


