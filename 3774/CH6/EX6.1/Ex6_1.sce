// exa 6.1 Pg 168
clc;clear;close;

// Given Data
Sut=650;// MPa
Syt=380;// MPa
F1BYF2 = 2.5;// ratio of tensions
Fmax=2.5;// kN
da=200;// mm
db=400;// mm
L=1*1000;//mm
Km=1.5;// fatigue factor
Kt=1;// shock factor


tau_d1=0.30*Syt;// MPa
tau_d2=0.18*Sut;// MPa
tau_d=min(tau_d1, tau_d2);// MPa (taking minimum value)
tau_d=0.75*tau_d;//MPa (Accounting keyway effect)

// Pulley A
F1=2500;// N
F2=1000;// N
T=(F1-F2)*da/2;// N.mm
Fa=F1+F2;// N (resultant pull Downwards)

// Pulley B
// F3 & F4 are tension in belt (assumed)
//T=(F3-F4)*db/2
SUB_F3F4 = 2*T/db;// N (where SUB_F3F4 = F3-F4) --eqn(1)
F3BYF4=F1BYF2;// ratio of tensions  --eqn(2)
F4 = SUB_F3F4/(F3BYF4-1);// N (using above 2 equations)
F3=F3BYF4*F4;// N
Fb=F3+F4;// N (resultant pull right side( -->))

// BENDING MOMENTS -
Mav=Fa*L/4;// N.mm (vertical force)
Mc=Fb*da;// N.mm
Mah=Mc/2;// N.mm (vertical force)
M = sqrt(Mav**2+Mah**2);// N.mm (resultant bending moment at A)
d=((16/%pi/tau_d)*sqrt((Km*M)**2+(Kt*T)**2))**(1/3);// mm 

printf('shaft diameter = %.2f mm. Use diameter = 45 mm.',d)
