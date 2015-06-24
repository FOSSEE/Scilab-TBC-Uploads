clc
clear
//input data
P00=3//The pressure at which air is received in bar
T00=373//The temperature at which air is received in K
rt=0.5//The rotor tip diameter of turbine in m
rh=0.3//The rotor exit diameter of the turbine in m
b=0.03//The rotor blade width at entry in m
b11=60//The air angle at rotor entry in degree
a11=25//The air angle at nozzle exit in degree
Ps=2//The stage pressure ratio
nn=0.97//The nozzle efficiency
N=7200//The speed of the turbine rotation in rpm
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations
U1=(3.14*rt*N)/60//Peripheral velocity of impeller at inlet in m/s
Cr=U1/(cotd(a11)-cotd(b11))//The radial velocity at inlet in m/s
ps1=Cr/U1//Flow coefficient 
sl=1+(ps1*cotd(b11))//Loading coefficient
DR=((1-(ps1*cotd(b11)))/2)//Degree of reaction
nts=((sl*U1^2)/(Cp*T00*(1-((1/Ps)^((r-1)/r)))))//Stage efficiency of the turbine
C2=Cr//Absolute velocity at the exit in m/s
U2=(3.1415*rh*N)/60//Peripheral velocity of impeller at exit in m/s
b22=atand(C2/U2)//The air angle at rotor exit in degree
dT=DR*U1*Cr*cotd(a11)/Cp//Total actual change in temperature in a stage turbine in K
dT0=(U1*Cr*cotd(a11))/Cp//The total change in temperature in turbine in K
T02=T00-dT0//The exit absolute temperature in K
T2=T02-((C2^2)/(2*Cp))//The actual exit temperature in K
T1=dT+T2//The actual inlet temperature in K
Cx1=Cr*cotd(a11)//Inlet absolute velocity of air in tangential direction in m/s
C1=Cx1/cosd(a11)//Absolute velocity at the inlet in m/s
dT1=(C1^2/2)/(Cp*nn)//The absolute change in temperature at the first stage in K
dP1=(1-(dT1/T00))^(r/(r-1))//The absolute pressure ratio in first stage 
P1=dP1*P00//The inlet pressure in bar
d1=(P1*10^5)/(R*T1)//The inlet density in kg/m^3
A1=3.1415*rt*b//The inlet area of the turbine in m^2
m=d1*A1*Cr//The mass flow rate of air at inlet in kg/s
P2=P00/Ps//The exit pressure in bar
d2=(P2*10^5)/(R*T2)//The exit density of air in kg/m^3
bh=(m/(d2*3.1415*rh*Cr))//Rotor width at the exit in m
W=m*U1*Cx1*10^-3//The power developed by the turbine in kW

//output
printf('(a)\n    (1)The flow coefficient is %3.3f\n    (2)The loading coefficient is %3.3f\n(b)\n    (1)The degree of reaction is %3.4f \n    (2)The stage efficiency of the turbine is %3.4f \n(c)\n    (1)The air angle at the rotor exit is %3.2f degree\n    (2)The width at the rotor exit is %3.4f m\n(d)\n    (1)The mass flow rate is %3.2f kg/s\n    (2)The power developed is %3.2f kW',ps1,sl,DR,nts,b22,bh,m,W)
