clc
clear
//input data
b1=60//The angle made by the relative velocity vector at exit in degree
db=30//The turning angle in degree
dCx=100//The change in the tangential velocities in m/s
DR=0.5//Degree of reaction
N=36000//The speed of the compressor in rpm
D=0.14//Mean blade diameter in m
P1=2//Inlet pressure in bar
T1=330//Inlet temperature in K
b=0.02//Blade height in m
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air

//calculations
b2=b1-db//The angle made by the relative velocity vector at entry in degree
a1=b2//Air flow angle at exit in degree as DR=0.5
U=(3.1415*D*N)/60//The blade mean speed in m/s
T2=((U*dCx)/(Cp*1000))+T1//The exit air temperature in K
P2=P1*(T2/T1)^(r/(r-1))//The exit air pressure in bar
dP=P2-P1//The pressure rise in bar
Ca=(2*U*DR)/(tand(b2)+tand(b1))//The axial velocity in m/s
A1=3.1415*D*b//The inlet flow area in m^2
d1=(P1*10^5)/(R*T1)//The inlet air density in kg/m^3
m=d1*A1*Ca//The amount of air handled in kg/s
W=m*Cp*(T2-T1)//The power developed in kW

//output
printf('(a)Air flow angle at exit is %3i degree\n(b)The pressure rise is %3.2f bar\n(c)The amount of air handled is %3.2f kg/s\n(d)The power developed is %3.1f kW',a1,dP,m,W)
