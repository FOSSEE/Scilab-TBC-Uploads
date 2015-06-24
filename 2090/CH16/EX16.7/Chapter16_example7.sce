clc
clear
//Input data
n=6;//Number of cylinders
Do=0.03;//Orifice diameter in m
Cd=0.6;//Coefficient of discharge 
H=0.14;//Pressure drop across the orifice
d=0.1;//The diameter of the bore in m
L=0.11;//The length of the stroke in m
W=540;//Brake load in N
N=2500;//Engine speed in rpm
ch=83/17;//C/H ratio by mass
p=1;//Ambient pressure in bar
t=18;//Time taken for fuel consumption in s
f=100;//The amount of fuel consumption in cc
T=300;//Ambient air temperature in K
df=780;//The density of the fuel in kg/m^3
R=287;//Real gas constant in J/kgK
g=9.81;//Gravitational force constant in m/s^2
pi=3.141;//Mathematical constant
dhg=13600;//Density of Hg in kg/m^3

//Calculations
da=(p*10^5)/(R*T);//The density of air in kg/m^3
Va=(Cd*(pi/4)*Do^2*[2*g*H*(dhg/da)]^(1/2));//Volume flow rate of air in m^3/s
Vs=(pi/4)*d^2*L*(N/(2*60))*n;//Swept volume per second in m^3/s
nv=(Va/Vs)*100;//Volumetric efficiency in percent
bp=(W*N)/(20000);//The brake power in kW
bmep=[(bp*1000)/(L*(pi/4)*d^2*(N/(2*60))*n)]/10^5;//The brake mean effective pressure in bar
T=(60*bp*1000)/(2*pi*N);//Torque in Nm
mf=(f/18)*(780/1000)*(1/1000)*3600;//Mass flow rate of fuel in kg/h
bsfc=mf/bp;//The brake specific fuel consumption in kg/kWh
so=(0.83*(32/12))+(0.17*(8/1));//Stoichiometric oxygen required per kg of fuel in kg/kg fuel
sa=so/bsfc;//Stoichiometric air required in kg/kg fuel
maa=Va*da;//Actual mass flow rate of air in kg/s
af=(maa*3600)/mf;//Actual air fuel ratio 
pea=[(af-sa)/sa]*100;//Percentage of excess air in percent

//Output
printf('The volumetric efficiency = %3.1f percent \n The brake mean effective pressure = %3.2f bar \n The brake power = %3.1f kW \n The Torque = %3.1f Nm \n The brake specific fuel consumption = %3.3f kg/kWh \n The percentage of excess air = %3.1f percent ',nv,bmep,bp,T,bsfc,pea)




