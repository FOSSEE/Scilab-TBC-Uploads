clc
clear
//input data
Dt=0.25//Tip diameter of the eye in m
Dh=0.1//Hub diameter of the eye in m
N=120//Speed of the compressor in rps
m=5//Mass of the air handled in kg/s
P01=102//Inlet stagnation pressure in kPa
T01=335//Inlet total temperature in K
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
d1=(P01*10^3)/(R*T01)//Density at the inlet of inducer in kg/m^3
Dm=(Dh+Dt)/2//Mean impeller diameter in m
b=(Dt-Dh)/2//Impeller blade height in m
C1=m/(d1*3.14*Dm*b)//Axial velocity component at the inlet in m/s
T11=T01-((C1^2)/(2*Cp))//Inlet temperature in K
P11=P01*(T11/T01)^(r/(r-1))//Inlet pressure in kPa
d11=(P11*10^3)/(R*T11)//Inlet density with mean impeller diameter an blade height in kg/m^3
C11=m/(d11*3.14*Dm*b)//Axial velocity component at inlet using mean blade values in m/s
T12=T01-((C1^2)/(2*Cp))//Initial temperature using modified axial velocity in K
P12=P01*(T12/T01)^(r/(r-1))//Initial pressure at inlet usin modified axial velocity in kPa
d12=(P12*10^3)/(R*T12)//Inlet density with modified axial velocity in kg/m^3
C12=m/(d12*3.14*Dm*b)//Axial velocity component at inlet using modified axial velocity in m/s
U1=3.14*Dm*N//Peripheral velocity of impeller at inlet in m/s
b1=atand(C12/U1)//The blade angle at impeller inlet in degree
W11=C12/sind(b1)//Relative velocity at inlet in m/s
Mr11=W11/(r*R*T12)^(1/2)//Initial relative mach number
Ca=C12//Axial velocity at IGV in m/s
W12=Ca//Relative velocity at inlet usin IGV in m/s
a1=atand(Ca/U1)//Air angle at IGV exit in degree
C13=Ca/sind(a1)//The velocity of flow of air at inlet in m/s
T13=T01-((C13^2)/(2*Cp))//Initial temperature using IGV in K
Mr12=W12/(r*R*T13)^(1/2)//Initial relative mach number using IGV 

//output5
printf('(1)Without using IGV\n    (a)The air angle at inlet of inducer blade is %3.2f degree\n    (b)The inlet relative mach number is %3.3f\n(2)With using IGV\n    (a))The air angle at inlet of inducer blade is %3.2f degree\n    (b)The inlet relative mach number is %3.3f',b1,Mr11,a1,Mr12)
