//Example 11_5
clc;clear;
//Properties
rho_ag=1.20;// kg/m^3
rho_ac=0.312;// kg/m^3
C_Lmax1=1.52;// The maximum lift coefficient of the wing with flaps
C_Lmax2=3.48;// The maximum lift coefficient of the wing without flaps
//Given values
m=70000;// kg
A=150;// m^2
V=558;/// km/h
g=9.81;// m/s^2

// Calculation
//(a)
W=m*g;// N
V=V/3.6;// m/s
V_min1=sqrt((2*W)/(rho_ag*C_Lmax1*A));// m/s
V_min2=sqrt((2*W)/(rho_ag*C_Lmax2*A));// m/s
V_1s=1.2*V_min1*3.6;// 1 m/s=3.6 km/h
printf('(a)Without flaps:V_min1,safe =%0.0f km/h\n',V_1s);
V_2s=1.2*V_min2*3.6;// 1 m/s=3.6 km/h
printf('    With flaps:V_min2,safe =%0.0f km/h\n',V_2s);
//(b)
F_l=W;// N
C_l=F_l/(1/2*rho_ac*V^2*A);// The lift coefficient
//For the case with no flaps, the angle of attack corresponding to this value of C_L is determined from Fig. 11–45 to be
alpha=10;// The angle of attack in degree
printf('(b)The angle of attack,alpha~=%0.0f degree\n',alpha);
//(c)
// From Fig.11-45,C_d~=0.03
C_d=0.03;// The drag coefficient
F_d=(C_d*A*rho_ac*(V^2/2))/1000;//kN
P=F_d*V;// kW
printf('(c)The power that needs to be supplied to provide enough thrust to overcome wing drag,P=%0.0f kW\n',P);
// The answer vary due to round off error
