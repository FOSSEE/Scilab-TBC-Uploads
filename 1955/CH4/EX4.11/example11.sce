clc
clear
//input data
N=3600//Running speed of blower in rpm
Dt=0.2//The rotor  tip diameter in m
Dh=0.125//The rotor hub diameter in m
P1=1.013//The atmospheric pressure in bar
T1=298//The atmospheric temperature in K
m=0.5//Mass flow rate of air in kg/s
db=20//The turning angle of the rotor in degree
b1=55//The inlet blade angle in degree 
R=287//The universal gas constant in J/kg.K
nc=0.9//Total-to-total efficiency
P=0.25//Total pressure drop across the intake in cm of water
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air
g=9.81//Acceleration due to gravity in m/s^2
ns=0.75//The stator efficiency
dw=1000//Density of water in kg/m^3

//calculations
d1=(P1*10^5)/(R*T1)//The density of air at inlet in kg/m^3
A=(3.141/4)*((Dt^2)-(Dh^2))//The area of flow in m^2
Ca=m/(d1*A)//The axial velocity of air in m/s
U=((3.141*(Dt+Dh)*N)/(2*60))//Mean rotor blade velocity in m/s
b2=b1-db//The outlet blade angle in degree
Cx2=U-(Ca*tand(b2))//The whirl velocity at exit in m/s 
Cx1=0//The whirl velocity at entry in m/s as flow at inlet is axial 
dh0r=U*(Cx2-Cx1)//The actual total enthalpy rise across the rotor in J/kg
dh0sr=nc*dh0r//The isentropic total enthalpy rise across the rotor in J/kg
dP0r=(d1*dh0sr)*((10^-1)/(g))//The total pressure rise across the rotor in cm of water
P0=dP0r-P//Stagnation pressure at the rotor exit in cm of water
C2=((Ca^2)+(Cx2^2))^(1/2)//The absolute velocity at the exit in m/s
dPr=dP0r-((d1*((C2^2)-(Ca^2)))/2)*((10^-1)/g)//The static pressure across the rotor in cm of water
dhs=((C2^2)-(Ca^2))/2//The actual enthalpy change across the stator in J/kg
dhss=ns*dhs//The theoretical enthalpy change across the stator in J/kg
dPs=(d1*dhss)*((10^-1)/g)//The static pressure rise across the stator in cm of water
dP0s=-((dPs/((10^-1)/g))+((d1/2)*(Ca^2-C2^2)))*(10^-1/g)//The change in total pressure across the stator in cm of water
P03=P0-dP0s//Total pressure at stator inlet in cm of water
dh0ss=((dw*g*(P03/100))/d1)//Theoretical total enthalpy change across the stage in J/kg
ntt=dh0ss/dh0r//The overall total-to-total efiiciency
DR=dPr/(dPr+dPs)//The degree of reaction for the stage

//output
printf('(a)Total pressure of air exit of rotor is %3.2f cm of water\n(b)The static pressure rise across the rotor is %3.2f cm of water\n(c)The static pressure rise across the stator os %3.2f cm of water\n(d)The change in total pressure across the stator is %3.2f cm of water\n(e)The overall total-to-total efficiency is %3.3f\n(f)The degree of reaction for the stage is %3.3f',P0,dPr,dPs,dP0s,ntt,DR)
