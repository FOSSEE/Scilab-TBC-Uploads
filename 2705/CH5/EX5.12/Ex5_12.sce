clear;
clc;
disp('Example 5.12');

//  aim : T0 determine 
//  (a) change in internal nergy of the air
//  (b) work done
//  (c) heat transfer

//  Given values
m = .25;//  mass, [kg]
P1 = 140;//  initial pressure, [kN/m^2]
V1 = .15;//  initial volume, [m^3]
P2 = 1400;//  final volume, [m^3]
cp = 1.005;//  [kJ/kg K]
cv = .718;//  [kJ/kg K]

//  solution

//  (a)
//  assuming ideal gas
R = cp-cv;//  [kJ/kg K]
//  also, P1*V1=m*R*T1,hence
T1 = P1*V1/(m*R);//  [K]

//  given that process is polytropic with 
n = 1.25; //  polytropic index
T2 = T1*(P2/P1)^((n-1)/n);//  [K]

//  Hence, change in internal energy is,
del_U = m*cv*(T2-T1);//  [kJ]
mprintf('\n (a) The change in internal energy of the air is del_U  =  %f  kJ',del_U);
if(del_U>0)
    disp('since del_U>0, so it is gain of internal energy to the air')
else
    disp('since del_U<0, so it is gain of internal energy to the surrounding')
end

//  (b)
W = m*R*(T1-T2)/(n-1);//  formula of work done for polytropic process,[kJ]
mprintf('\n (b) The work done is W =  %f  kJ',W);
if(W>0)
    disp('since W>0, so the work is done by  the air')
else
    disp('since W<0, so the work is done on the air')
end

//  (c)
Q = del_U+W;//  using 1st law of thermodynamics,[kJ]
mprintf('\n (c) The heat transfer is Q  =  %f  kJ',Q);
if(Q>0)
    disp('since Q>0, so the heat is received by  the air')
else
    disp('since Q<0, so the heat is rejected by the air')
end

//  End
