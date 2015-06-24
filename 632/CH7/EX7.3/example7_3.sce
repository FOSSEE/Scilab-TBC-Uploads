//clc()
xa = 0.25;
xb = 0.30;
xc = 1 - xa - xb;
Ptotal = 200;//kPa
Pcs = 50;//kPa(Vapour pressure of c)
Pc = xc * Pcs;//(partial pressure of c)
yc = Pc / Ptotal;
yb = 0.5;
ya = 1 - yb - yc;
per1 = ya * 100;
disp("%",per1,"Percentage of A in vapour = ") 