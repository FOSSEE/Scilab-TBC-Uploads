clc
clear
//input data
D1=0.18//The impeller inner diameter in m
D2=0.2//The impeller outer diameter in m
C1=21//The absolute velocity at the entry in m/s
C2=25//The absolute velocity at the exit in m/s
W1=20//The relative velocity at the entry in m/s
W2=17//The relative velocity at the exit in m/s
N=1450//The running speed of the fan in rpm
m=0.5//The mass flow rate of the air in fan in kg/s
nm=0.78//The motor efficiency of the fan 
d=1.25//The density of the air in kg/m^3
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in J/kg.K

//calculations
U1=(3.14*D1*N)/60//Peripheral velocity of impeller at inlet in m/s
U2=(3.14*D2*N)/60//The impeller tip speed in m/s
dH=(((U2^2)-(U1^2))/2)+(((W1^2)-(W2^2))/2)//The actual total rise in enthalpy in kJ/kg
dH0=dH+(((C2^2)-(C1^2))/2)//The stage total isentropic rise in enthalpy in kJ/kg
dP0=d*dH0//The stage total pressure rise in N/m^2
dP=d*dH//The actual total rise in pressure in N/m^2
R=dP/dP0//The degree of reaction of the  fan
W=m*(dH0)//The work done by the fan per second in W
P=W/nm//The power input to the fan in W

//output
printf('(a)The stage total pressure rise is %3.1f N/m^2\n(b)The degree of reaction of the fan is %3.3f\n(c)The power input to the fan is %3.1f W',dP0,R,P)
