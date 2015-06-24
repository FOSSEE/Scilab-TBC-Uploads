clc
clear
//Input data
Vs=0.002;//The swept volume in m^3
nv=75;//Volumetric efficiency in percent
N=4500;//The engine rpm
p1=1.013;//The initial pressure of air in bar
R=287;//Real gas constant in J/kgK
pi=3.141;//The mathematical constant of pi
t1=15;//The atmospheric temperature in degree centigrade
Cp=1005;//The specific heat of gas in J/kgK
g=1.4;//Adiabatic index
C2=100;//The air flow velocity at choke in m/s
Cda=0.85;//The velocity coefficient for the venturi
Cdf=0.66;//The coefficient of discharge of the main fuel jet 
sf=0.75;//The specific gravity of fuel
d=0.4;//The ratio of the diameter to choke diameter
af=14;//The air fuel ratio
gf=9.81;//The gravitational force constant in m/s^2
Z=0.006;//The petrol surface below the choke in m
df=750;//The density of the fuel in kg/m^3

//Calculations
Va=((nv/100)*Vs*N)/(2*60);//The volume of air induced in m^3/s
V1=Va/2;//The carburator delivers an air flow in m^3/s
ma=(p1*10^5*V1)/(R*(t1+273));//The mass flow rate of air in kg/s
p2=p1*[1-(C2^2/(2*Cp*(t1+273)))]^(g/(g-1));//The pressure at throat in bar
da1=[(p1*10^5)/(R*(t1+273))];//The density of air in kg/m^3
da2=da1*(p2/p1)^(1/g);//Density of air at throat in kg/m^3
A2=[ma/(da2*C2*Cda)]*10^6;//The throat area in mm^2
D=[(A2*4)/(pi*0.84)]^(1/2);//The choke diameter in mm
mf=ma/af;//The mass flow rate of fuel in kg/s
pm=[p1-p2-(gf*Z*df/10^5)]*10^5;//The pressure difference across the main jet in N/m^2
Aj=(mf/(Cdf*(2*df*pm)^(1/2)))*10^6;//The area of the jet in mm^2
dj=(4*Aj/pi)^(1/2);//The diameter of the jet in mm

//Output
printf('The diameter of the choke = %3.2f mm \n The diameter of the jet in = %3.2f mm ',D,dj)

