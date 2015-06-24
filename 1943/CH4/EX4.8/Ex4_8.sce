
clc
clear
//Input data
n=6;//Total lancashire boilers in a textile factory
Ws=6;//Each boiler supplying steam in t/h
p=16;//Pressure at which steam is supplied in bar
t=250;//Temperature at which steam is supplied in degree centigrade
CV=43960;//Calorific value of the fuel oil in kJ/kg
no=75;//Overall efficiency of the boiler in %
a=16;//The amount of air required for efficient burning of the fuel inkg
H=20;//Drought of water gauge required at the base of chimney in mm
tf=320;//The flue gases leave the boiler in degree centigrade
ts=300;//The average temperature of the gases in the stack in degree centigrade
ta=30;//The atmospheric temperature in degree centigrade
R=0.287;//Real Gas constant in kJ/kgK
h1=2919.2;//enthalpy at the entrance of the boiler in kJ/kgK
hf=125.8;//Enthalpy at the feed in kJ/kgK
pi=3.1412;//Mathematical constant
g=9.81;//gravitational fore constant in m/s^2
P=1.013;//Atmospheric pressure in bar

//Calculations
H1=[(H*R*(273+ta)*(273+ts))]/[P*100*[(273+ts)-(273+ta)]];//The draught produced in m
Wf=[[(Ws*1000)*6*(h1-hf)]/((no/100)*CV)]/3600;//Air fuel ratio in kg/s
Wa=a*Wf;//Actual air fuel ratio in kg/s
Wfg=17*Wf;//Air fuel ratio in kg/s
D=[[(Wfg*R*(273+ts)*(4/pi))]/[(101.3)*(2*g*H1)^(1/2)]]^(1/2);//Diameter at its base in m

//Output
printf('(a)The height of the stack H = %3.2f m \n (b)The diameter at its base D = %3.2f m ',H1,D)
