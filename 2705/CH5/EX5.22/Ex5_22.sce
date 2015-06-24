clear;
clc;
disp('Example 5.22');

//  aim : To determine the
//  (a) new pressure of the air in the receiver
//  (b) specific enthalpy of air at 15 C

//  Given values
V1 = .85;//  [m^3]
T1 = 15+273;//  [K]
P1 = 275;// pressure,[kN/m^2]
m = 1.7;//  [kg]
cp = 1.005;//  [kJ/kg*K]
cv = .715;//  [kJ/kg*K]

//  solution

//  (a)

R = cp-cv;//  [kJ/kg*K]
//  assuming m1 is original mass of the air, using P*V=m*R*T
m1 = P1*V1/(R*T1);//  [kg]
m2 = m1+m;//  [kg]
//  again using P*V=m*R*T
//  P2/P1=(m2*R*T2/V2)/(m1*R*T1/V1); and T1=T2,V1=V2,so
P2 = P1*m2/m1;//  [kN/m^2]
mprintf('\n (a) The new pressure of the air in the receiver is = %f kN/m^2\n',P2);

//  (b)
//  for 1 kg of air, h2-h1=cp*(T1-T0)
//  and if 0 is chosen as the zero enthalpy, then
h = cp*(T1-273);//  [kJ/kg]
mprintf('\n (b) The specific  enthalpy of the air at 15 C is =  %f kJ/kg\n',h);

//  End
