rk = 16;
T1 = 273+15;
P1 = 100; // in kN/m2
T3 = 1480+273;
g = 1.4; // gamma 
R = 0.287;
T2 = 288*(rk^(g-1));
rc =  T3/T2 ;
cp = 1.005; cv = 0.718;
Q1 = cp*(T3-T2);
T4 = T3*((rc/rk)^(g-1));
Q2 = cv*(T4-T1);
n = 1-(Q2/Q1); // cycle efficiency
n_ = 1-((1/g))*(1/rk^(g-1))*((rc^(g-1))/(rc-1)); // cycle efficiency from another formula
Wnet = Q1*n;
v1 = (R*T1)/P1 ;
v2 = v1/rk;
Pm = Wnet/(v1-v2);
disp(rc,"cut-off ratio is")
disp("kJ/kg",Q1,"Heat supplied per kg of air is")
disp("%",n*100,"Cycle efficiency is")
disp("KPa",Pm,"Mean effective pressure is")

