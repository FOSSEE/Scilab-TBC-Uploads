clear;
clc;
disp('Example 5.15');

//  aim : To determine 
//  the heat transferred and polytropic specific heat capacity

//  Given values
P1 = 1;//  initial pressure, [MN/m^2]
V1 = .003;//  initial volume, [m^3]
P2 = .1;//  final pressure,[MN/m^2]
cv = .718;//  [kJ/kg*K]
Gamma=1.4;//  heat capacity ratio

//  solution
//  Given process is polytropic with
n = 1.3;//  polytropic index
//  hence
V2 = V1*(P1/P2)^(1/n);//  final volume,[m^3]
W = (P1*V1-P2*V2)*10^3/(n-1);//  work done,[kJ]
//  so
Q = (Gamma-n)*W/(Gamma-1);//  heat transferred,[kJ]

mprintf('\n The heat received or rejected by the gas during this process is Q  =  %f kJ',Q);
if(Q>0)
    disp('since Q>0, so heat is received by the gas')
else
    disp('since Q<0, so heat is rejected by the gas')
end

//  now
cn = cv*(Gamma-n)/(n-1);//  polytropic specific heat capacity,[kJ/kg K]
mprintf('\n The polytropic specific heat capacity is cn  =  %f kJ/kg K\n',cn);

//  End
