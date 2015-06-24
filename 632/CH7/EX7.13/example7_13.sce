//clc()
P = 93.30;//kPa
T1 = 353;//K
T2 = 373;//K
Pwater1 = 47.98;//kPa
Pwater2 = 101.3;//kPa
Pliq1 = 2.67;//kPa
Pliq2 = 5.33;//kPa
T = T1 + (T2 - T1)*(P - (Pwater1 + Pliq1))/(Pwater2 + Pliq2 - (Pwater1 + Pliq1));
disp("K",T,"(a)The equilibrium temperature = ")
Pwater = 88.50;
y = Pwater * 100 /P;
disp("%",y,"(b)Water vapour in vapour mixture = ")
