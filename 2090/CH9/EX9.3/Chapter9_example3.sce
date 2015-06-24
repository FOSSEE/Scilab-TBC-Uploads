clc
clear
//Input data
d=0.08;//The diameter of the bore in m
L=0.09;//The length of the stroke in m
N=4000;//The engine rpm
C=84;//The carbon content in the fuel by mass in percent
H=16;//The hydrogen content in the fuel by mass in percent
nv=80;//The volumetric efficiency of the engine in percent
p1=1;//The pressure at ambient condition in bar
t1=25;//The temperature at ambient condition in degree centigrade
p=0.06;//The depression at venturi throat in bar
ma=0.95;//The actuat quantity of air supplied
Ra=287;//Real gas constant in J/kgK
Rf=98;//Real gas constant in J/kgK
pi=3.141;//The mathematical constant of pi
n=4;//Number of cylinders
Cp=1005;//The specific heat of gas in J/kgK
g=1.4;//Adiabatic index

//Calculations
V=(pi/4)*d^2*L*(nv/100)*(N/(2*60))*n;//The volume of mixture supplied to the engine in m^3/s
Af=(100/23)*((C*(32/12))+(H*8))/100;//Stoichiometric air/fuel ratio
mfa=Af*ma;//The actual mass of air supplied per kg of fuel in kg/kg fuel
Aaf=mfa;//Actual air fuel ratio
da=(p1*10^5)/(Ra*(t1+273));//The density of air at one bar in kg/m^3
dv=(p1*10^5)/(Rf*(t1+273));//The density of fuel vapour in kg/m^3
ma1=V/((1/da)+(1/(mfa*dv)));//Mass flow rate of air in kg/s
mf1=ma1/mfa;//Mass flow rate of fuel in kg/s
p2=p1-p;//The pressure at the outlet in bar 
C2=[2*Cp*(t1+273)*(1-(p2/p1)^((g-1)/g))]^(1/2);//Velocity of air at the throat in m/s
T2=(t1+273)*(p2/p1)^((g-1)/g);//The temperature at throat in K
d2=(p2*10^5)/(Ra*T2);//The density of the air at throat in kg/m^3
A2=[ma1/(d2*C2)]*10^4;//The cross sectional area of the venturi throat in cm^2
d2=(A2*4/pi)^(1/2);//The diameter of the venturi throat in cm

//Output
printf('The fuel flow rate = %3.6f kg/s \n The velocity of air at throat = %3.1f m/s \n The throat diameter = %3.2f cm ',mf1,C2,d2)
