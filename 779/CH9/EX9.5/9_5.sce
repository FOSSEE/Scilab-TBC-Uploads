Psat = 3.973e06;
vf = 0.0012512; vg = 0.05013;
hf = 1085.36; hfg = 1716.2;
sf = 2.7927; sfg = 3.2802;
mf = 9; V = 0.04;
Vf = mf*vf;
Vg = V-Vf;
mg = Vg/vg;
m = mf+mg;
x = mg/m;
v = vf+x*(vg-vf);
h = hf+x*hfg;
s = sf+(x*sfg);
u = h-Psat*v*1e-03;
// at T = 250
uf = 1080.39; ufg = 1522;
u_ = uf+x*ufg;
disp("Pa",Psat,"The pressure is")
disp("kg",m,"The mass is")
disp("m3/kg",v,"Specific volume is")
disp("kJ/kg",h,"Enthalpy is")
disp("kJ/kg K",s,"The entropy is")
disp("kJ/kg",u,"The interal energy is")