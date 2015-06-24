clc
clear
//input data
Pr=2//The pressure ratio of first stage
P1=1.01//The inlet pressure in bar
T1=303//The inlet temperature in K
nc=0.83//Overall efficency of the compressor
pi=0.47//The flow coefficient
dCxCa=0.5//Ratio of change of whirl velocity to axial velocity
D=0.5//Mean diameter in m
r=1.4//The ratio of specific heats of air
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
dT=T1*((Pr^((r-1)/r))-1)/nc//The Actual overall temperature raise in K
dCx=dCxCa*pi//The change of whirl velocity in m/s
U=(dT*Cp/dCx)^(1/2)//The mean blade speed in m/s
N=(U*60)/(3.1415*D)//Speed at which compressor runs in rpm
Cx2=(U+(dCx*U))/2//The whirl velocity at exit in m/s
Cx1=U-Cx2//The whirl velocity at entry in m/s
Ca=pi*U//The axial velocity in m/s
C1=((Ca^2)+(Cx1^2))^(1/2)//The inlet absolute velocity of air in m/s

//output
printf('(a)The compressor speed is %3i rpm\n(b)The absolute velocity of air is %3.2f m/s',N,C1)
