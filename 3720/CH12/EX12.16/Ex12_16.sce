//Example 12_16
clc;clear;
// Given values
D=3/100;// Diameter in m
P_1=150;// kPa
T_1=300;// K
Ma_1=0.4;// Mach number

// Properties
k=1.4;// Specific heat ratio
C_p=1.005;// kJ/kg.K
R=0.287;// kJ/kg.K
nu=1.58*10^-5;//Kinematic viscosity in m^2/s

// Calculation
c_1=sqrt(k*R*T_1*1000);// m/s
V_1=Ma_1*c_1;// Mach number
Re_1=(V_1*D)/nu;// The inlet Reynolds number
// The friction factor is determined from the Colebrook equation,
function[X]=frictionfactor(y)
    X(1)=real(-(2.0*log10((0/3.7)+(2.51/((Re_1)*sqrt(y(1)))))))-(1/sqrt(y(1)));
endfunction
y=[0.01];
z=fsolve(y,frictionfactor);
f=z(1); 
// The Fanno flow functions corresponding to the inlet Mach number of 0.4,From Table A-16
P_0r=1.5901;// (P_0r=P_01/P_0*)
T_r=1.1628;// (T_1r=T_1/T*)
P_r=2.6958;// (P_1r=P_1/P*)
V_r=0.4313;// (V_1r=V_1/V*)
fL_D=2.3085;
L_1=((fL_D*D)/f);// m
T_c=T_1/T_r;// K
P_c=P_1/P_r;// kPa
V_c=V_1/V_r;// m/s
P_01L=(1-(1/P_0r))*100;
printf('\nThe duct length=%0.2f m \nThe temperature at exit=%0.0f K \nThe pressure at exit=%0.1f kPa \nThe velocity at exit=%0.0f m/s \nThe percentage of stagnation pressure lost in the duct=%0.1f percentage',L_1,T_c,P_c,V_c,P_01L);
