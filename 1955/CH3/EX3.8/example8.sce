clc
clear
//input data
Dh=0.175//Hub diameter of the eye in m
Dt=0.3125//Tip diameter of the eye in m
m=20//Mass of the air handled in kg/s
N=16000//Speed of the compressor in rpm
T01=288//The ambient air temperature in K
P01=100//The ambient air pressure in kPa
Ca=152//The axial component of inlet velocity of eye in m/s
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K


//calculations
A=(3.14/4)*((Dt^2)-(Dh^2))//Annulus area of flow at the impeller eye in m^2
Ut=(3.1415*Dt*N)/60//Impeller eye tip speed in m/s
Uh=(3.1415*Dh*N)/60//Impeller eye hub speed in m/s
a1=90-20//Blade angle at inlet in degree 
C1=Ca/sind(a1)//The air entry velocity into the impeller eye in m/s
T1=T01-((C1^2)/(2*Cp))//The actual inlet air temperature in K
P1=P01*(T1/T01)^(r/(r-1))//The actual inlet air pressure in kPa
d1=P1/(R*T1)//The initial density of air at entry in kg/m^3
b1h=atand(Ca/(Uh-(Ca/tand(a1))))//Impeller angle at the hub in degree
b1t=atand(Ca/(Ut-(Ca/tand(a1))))//Impeller angle at the tip of eye in degree
Cx1=Ca/tand(a1)//Inlet absolute velocity of air in tangential direction in m/s
Wx1=Ut-Cx1//Relative whirl component of velocity at inlet in m/s
W1=((Wx1^2)+(Ca^2))^(1/2)//Relative velocity at inlet in m/s
Mr1=W1/(r*R*T1)^(1/2)//Maximum mach number at the eye

//output
printf('(a)\n    (1)The impeller eye tip speed is %3.2f m/s\n    (2)The impeller eye hub speed is %3.2f m/s\n    (3)The impeller angle at the hub is %i degree\n    (4)Impeller angle at the tip of eye is %3.2f degree\n(b)The maximum mach number at the eye is %3.2f',Ut,Uh,b1h,b1t,Mr1)
