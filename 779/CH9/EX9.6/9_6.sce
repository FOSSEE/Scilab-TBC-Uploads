// Part (a)
vg1_ = 0.8919; T1_ = 120;
vg2_ = 0.77076; T2_ = 125;
vg_ = [vg1_ vg2_]; T_ = [T1 T2];
v1 = 0.7964;
h1 = 2967.6;
P1 = 0.3e03; // in Kpa
T1 = interpln([vg_;T_],v1);
disp("degree",T3,"The steam become saturated at ")
// Part (b)
vf = 0.001029; vg = 3.407;
hf = 334.91; hfg = 2308.8;
Psat = 47.39; // In kPa
v2 = v1;
x2 = (v1-vf)/(vg-vf);
h2 = hf+x2*hfg;
P2 = Psat;
Q12 = (h2-h1)+v1*(P1-P2);
disp(x2,"The quality factor at t  =80 degree is")
disp("kJ/kg",Q12,"The heat transfered per kg of steam in cooling from 250 degree to 80 degree")

