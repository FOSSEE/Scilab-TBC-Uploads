clc
clear
//input data
N=3000//The running speed of the blower in rpm
D2=0.75//The impeller diameter in m
Cr2=57//The radial velocity at exit in m/s
Cx1=0//Inlet absolute velocity of air in tangential direction in m/s
DR=0.58//Degree of reaction of the blower
nc=0.75//Total-to-total efficiency
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in J/kg.K
T01=298//The inlet stagnation temperature in K
P01=1*101.325//The inlet stagnation pressure in kPa

//calculations
U2=(3.1415*D2*N)/60//The impeller tip speed in m/s
Cx2=2*(1-DR)*U2//Outlet absolute velocity of air in tangential direction in m/s
Wx2=U2-Cx2//Relative whirl component of velocity at outlet in m/s
b22=atand(Cr2/Wx2)//The blade air angle at the tip in degree
Wm=U2*Cx2*10^-3//Actual work done per unit mass flow rate when Cx1=0 in kW/(kg/s)
T=Wm/Cp//Total change in temperature in blower in K
P=(1+(nc*(T/T01)))^(r/(r-1))//Total pressure ratio in the blower
P02=P*P01//The outlet stagnation pressure from blower in kPa

//output
printf('(a)The exit blade angle is %3.1f degree\n(b)The power input to the blower is %3.3f kW/(kg/s)\n(c)The exit stagnation pressure is %3.2f kPa',b22,Wm,P02)
