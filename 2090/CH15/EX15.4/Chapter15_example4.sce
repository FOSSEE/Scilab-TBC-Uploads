clc
clear
//Input data
d=0.1;//The diameter of the bore in m
L=0.12;//The length of the stroke in m
N=3000;//The speed of the engine in rpm
n=4;//Number of cylinders
pi=3.141;//Mathematical constant of pi
R=287;//Real gas constant in J/kgK
t=120;//Output Torque in Nm
nm=85;//The mechanical efficiency of the engine in percent
T1=288;//The inlet temperature of air into compressor in K
p1=1;//The inlet pressure of air into compressor in bar
Q=1200;//Heat rejected rate in kJ/min
T=328;//The outlet temperature of air in K
p=1.7;//The outlet pressure of air in bar
nv=90;//Volumetric efficiency in percent
Cp=1.005;//Specific heat of gas in kJ/kg

//Calculations
bp=(2*pi*N*t)/(60*1000);//The brake power in kW
ip=bp/(nm/100);//The indicated power in kW
pmi=[(ip*2*60*1000*4)/[L*(pi*d^2)*N*n]]/10^5;//The mean effective pressure in bar
Vs=(pi/4)*d^2*L;//Swept volume in m^3
Vs1=Vs*(N/2)*n;//Volume swept by the piston per min 
V1=(nv/100)*Vs1;//Rate of volume flow of air into the engine in m^3/min
me=[(p*10^5*V1)/(R*T)]*60;//Rate of mass flow of air into the engine in kg/h
E=Q/60;//Energy balance in the after cooling in kJ/s
T2=[(bp/E)*T-T1]/((bp/E)-1);//The outlet temperature of air in K
mc=[(bp)/(Cp*(T2-T1))]*3600;//Mass flow rate in kg/h
maf=mc-me;//Rate of air flow available to the consumer in kg/h

//Output
printf('(a) The imep of the supercharged engine = %3.3f bar \n (b) The rate of air consumed by the engine = %3.1f kg/h \n (c) The rate of air flow available to the consumer = %3.1f kg/h ',pmi,me,maf)


