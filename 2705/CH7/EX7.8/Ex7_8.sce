clear;
clc;
disp('Example 7.8');

//  aim : To determine
//  the change of entropy

//  Given values
m = .3;//  [kg]
P1 = 350;//  [kN/m^2]
T1 = 273+35;//  [K]
P2 = 700;//  [kN/m^2]
V3 = .2289;//  [m^3]
cp = 1.006;//  [kJ/kg K]
cv = .717;//  [kJ/kg K]

//  solution
//  for constant volume process
R = cp-cv;//  [kJ/kg K]
//  using PV=mRT
V1 = m*R*T1/P1;//  [m^3]

//  for constant volume process P/T=constant,so
T2 = T1*P2/P1;//  [K]
s21 = m*cv*log(P2/P1);//  formula for entropy change for constant volume process
mprintf('\n The change of entropy in constant volume process is  =  %f  kJ/kg K\n',s21);

// 'For the above part result given in the book is wrong

V2 = V1;
// for constant pressure process
T3 = T2*V3/V2;//  [K]
s32 = m*cp*log(V3/V2);//  [kJ/kg K]

mprintf('\n The change of entropy in constant pressure process is  =  %f  kJ/kg K\n',s32);

// there is misprint in the book's result

// End
