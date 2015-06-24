// Part (a)
P1 = 1e05;
P2 = 10e05;
vf = 0.001043;
Wrev = vf*(P1-P2);
disp("kJ/kg",Wrev/1000,"The work required in saturated liquid form is")
// Part (b)
h1 = 2675.5; s1 = 7.3594;
s2 = s1;
h2 = 3195.5;
Wrev1 = h1-h2;
disp("kJ/kg",Wrev1,"The work required in saturated vapour form is")
