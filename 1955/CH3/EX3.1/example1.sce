clc
clear
//input data
m=10//The mass flow rate of air into compressor in kg/s
P1=1//The ambient air pressure in compressor in bar
T1=293//The ambient air temperature in compressor in K
N=20000//The running speed of the compressor in rpm
nc=0.8//The isentropic efficiency of the compressor
P02=4.5//The total exit pressure from the compressor in bar
C1=150//The air entry velocity into the impeller eye in m/s
Cx1=0//The pre whirl speed in m/s
WS=0.95//The ratio of whirl speed to tip speed
Cp=1005//The specific heat of air at constant pressure in J/kg.K 
R=287//The universal gas constant in J/kg.K
Dh=0.15//The eye internal diamater in m
r=1.4//Ratio of specific heats of air 
d=1.189//The density of the air in kg/m^3

//calculations
T01=T1+((C1^2)/(2*Cp))//The stagnation temperature at inlet in K
P01=P1*(T01/T1)^(r/(r-1))//The stagnation pressure at inlet in bar
T02s=(T01)*(P02/P01)^((r-1)/r)//The temperature after isentropic compression from P01 to P02 in K
T=(T02s-T01)/nc//The actual rise in total temperature in K
W=Cp*(10^-3)*(T)//The work done per unit mass in kJ/kg
U2=((W*(10^3))/(WS))^(1/2)//The impeller tip speed in m/s
Dt=(U2*60)/(3.1415*N)//The impeller tip diameter in m
P=m*W//Power required to drive the compressor in kW
d1=((P1*10^5)/(R*T1))//The density of the air entry in kg/m^3
De=(((4*m)/(d*C1*3.14))+(Dh^2))^(1/2)//The eye external diameter in m

//output
printf('(a)The actual rise in total temperature of the compressor is %3.1f K\n(b)\n      (1)The impeller tip speed is %3.2f m/s\n      (2)The impeller tip diameter is %3.2f m\n(c)The power required to drive the compressor is %3.1f kW\n(d)The eye external diameter is %3.3f m',T,U2,Dt,P,De)
