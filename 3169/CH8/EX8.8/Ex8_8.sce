//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.8
//calculation of rise in voltage at the other end

//given data
R=0.1//resistance(in ohm/km)
L=1.26*10^-3//inductance(in H/km)
C=0.009*10^-6//capacitance(in F/km)
l=400//length(in km) of the line
V1=230//line voltage(in kV)
f=50//frequency(in Hz)
G=0

//calculation
//Neglecting resistance of line
V1p=V1/sqrt(3)
omega=2*%pi*f
Xl=complex(0,omega*L*l)
Xc=complex(0,-1/(omega*C*l))
V2=V1p*((1-(Xl/(2*Xc)))-1)

//Considering all the parameters
omegaL=complex(0,omega*L)
omegaC=complex(0,omega*C)
i=l*sqrt((R+omegaL)*(G+omegaC))
betal=imag(i)*l
V2n=V1p/cos(betal)

printf('Neglecting resistance of line,the rise in voltage at the other end is %3.1f kV',V2)
printf('\nConsidering all the parameters,the rise in voltage at the other end is %3.2f kV',V2n-V1p)

//By considering all the parameters the rise in voltage at the other end is 94.50 kV
