clc
clear
//input data
N=9000//The rotational speed in rpm
dT0=20//The stagnation temperature rise in K
DhDt=0.6//The hub to tip ratio
l=0.94//The work donee factor
ns=0.9//The isentropic efficiency of the stage
C1=150//Inlet velocity in m/s
P01=1//The ambient pressure in bar
T01=300//The ambient temperature in K
Mr1=0.92//Mach number relative to tip 
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air
g=9.81//Acceleration due to gravity in m/s^2

//calculations
T1=T01-((C1^2)/(2*Cp))//The inlet temperature in K
W1=Mr1*(r*R*T1)^(1/2)//The relative velocity at entry in m/s
b11=acosd((C1)/(W1))//The inlet rotor angle at tip in degree
Ut=W1*sind(b11)//Tip speed in m/s
rt=(Ut*60)/(2*3.1415*N)//The tip radius in m
b12=atand((tand(b11))-((Cp*dT0)/(l*Ut*C1)))//The outlet rotor angle at tip in degree
P1=P01*(T1/T01)^(r/(r-1))//The inlet pressure in bar
d1=(P1*10^5)/(R*T1)//The density of air at the entry in kg/m^3
Dt=2*rt//The tip diameter in m
Dh=DhDt*(Dt)//The hub diameter in m
A1=(3.141/4)*((Dt^2)-(Dh^2))//The area of cross section at the entry in m^2
rm=((Dt/2)+(Dh/2))/2//The mean radius in m
h=((Dt/2)-(Dh/2))//The height of the blade in m
A=2*3.1415*rm*h//The area of the cross section in m^2
m=d1*A*C1//The mass flow rate in kg/s
P03P01=(1+((ns*dT0)/T01))^(r/(r-1))//The stagnation pressure ratio 
P=m*Cp*dT0*10^-3//The power required in kW
Uh=(3.1415*Dh*N)/60//The hub speed in m/s
b21=atand(Uh/C1)//The rotor air angle at entry in degree
b22=atand(tand(b21)-((Cp*dT0)/(l*Uh*C1)))//The rotor air angle at exit in degree

//output
printf('(a)\n    (1)The tip radius is %3.3f m\n    (2)The rotor entry angle at tip section is %3.1f degree\n    (3)The rotor exit angle at tip section is %3.2f degree\n(b)Mass flow entering the stage is %3.3f kg/s\n(c)\n    (1)The stagnation pressure ratio is %3.3f\n    (2)The power required is %3.2f kW\n(d)\n    (1)The rotor air angle at entry is %3.2f degree\n    (2)The rotor air angle at exit is %3.2f degree',rt,b11,b12,m,P03P01,P,b21,b22)

