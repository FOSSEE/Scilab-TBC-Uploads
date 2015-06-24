clc
clear
//Input data
d=0.06;//The diameter of the bore in m 
L=0.085;//The length of the stroke in m
N=3000;//The speed of the engine in rpm
r=0.35;//Torque arm radius in m
W=160;//Weight in N
pi=3.141;//Mathemetical constant
f=6.6;//Fuel consumption in l/h
g=0.78;//specific gravity of the fuel 
CV=44000;//The calorific value of the fuel in kJ/kg
w1=114;//Brake load for cylinder 1 in N
w2=110;//Brake load for cylinder 2 in N
w3=112;//Brake load for cylinder 3 in N
w4=116;//Brake load for cylinder 4 in N
n=4;//Number of cylinders

//Calculations
Vf=(f*10^-3)/3600;//Volume flow rate of fuel in m^3/s
df=g*1000;//The density of the fuel in kg/m^3
mf=df*Vf;//Mass flow rate of fuel in kg/s
T=W*r;//Torque in Nm
bp=(2*pi*N*T)/(60*1000);//The brake power in kW
pmb=[(120*bp*1000)/(L*(pi/4)*d^2*N*n)]/10^5;//Brake mean effective pressure in bar
nb=[(bp)/(mf*CV)]*100;//The brake thermal efficiency in percent
bsfc=(mf*3600)/bp;//Brake specific fuel consumption in kg/kWh
bp1=[(2*pi*N*w1*r)/(60*1000)];//Brake power from morse test in kW
ip1=bp-bp1;//Indicated power in kW
ip2=bp-[(2*pi*N*w2*r)/(60*1000)];//Indicated power in kW
ip3=bp-[(2*pi*N*w3*r)/(60*1000)];//Indicated power in kW
ip4=bp-[(2*pi*N*w4*r)/(60*1000)];//Indicated power in kW
ip=ip1+ip2+ip3+ip4;//Total indicated power in kW
nm=(bp/ip)*100;//Mechanical efficiency in %
pmi=pmb/(nm/100);//The imep in bar

//Output
printf('The brake power = %3.2f kW \n The brake mean effective pressure = %3.2f bar \n The brake thermal efficiency = %3.0f percent \n The brake specific fuel consumption = %3.3f kg/kWh \n The indicated power = %3.2f kW \n The mechanical efficiency = %3.1f percent \n The indicated mean effective pressure = %3.1f bar ',bp,pmb,nb,bsfc,ip,nm,pmi)
