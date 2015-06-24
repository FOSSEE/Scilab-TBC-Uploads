clc
clear
//input data
D1=0.09//Rotor inlet tip diameter in m
D2t=0.062//Rotor outlet tip diameter in m
D2h=0.025//Rotor outlet hub diameter in m
N=30000//Blade speed in rpm
d2=1.8//Density of exhaust gases at impeller exit in kg/m^3
C2s=0.447//Ratio of absolute velocity and isentropic velocity at exit
U1Cs=0.707//Ratio of impeller tip velocity and isentropic velocity

//calculations
U1=(3.1415*D1*N)/60//The impeller tip speed in m/s
Cs=U1/U1Cs//Isentropic velocity in m/s
C2=C2s*Cs//Absolute velocity at the exit in m/s
A2=(3.141/4)*((D2t^2)-(D2h^2))//Area at the exit in m^2
Q2=A2*C2//Volume flow rate at the impeller exit in m^3/s
M=d2*Q2//Mass flow rate in kg/s
W=M*U1^2//Power developed in W

//output
printf('(a)Volume flow rate at the impeller exit is %3.3f m^3/s\n(b)Power developed is %i W',Q2,W)
