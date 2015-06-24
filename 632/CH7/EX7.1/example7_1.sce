//clc()
Pas = 71.2;//kPa
Pbs = 48.9;//kPa
P = 65;//kPa
//P=(Pas-Pbs)*xa+Pbs,xa=mole fraction of n-heptane,liq. condition,therefore
xa = (P - Pbs)/(Pas - Pbs);
//ya = Pa / P , Vapour condition
ya = Pas * xa / P;
P1 = xa * 100;
P2 = ya * 100;
disp("%",P1,"Percentage of hepatne in liquid = ")
disp("%",P2,"Percentage of hepatne in vapour = ")