clc

disp("(a)From steam tables")

p1=15*10^5; //Pa
p2=7.5*10^5; //Pa
h_f1=844.7; //kJ/kg
ts1=198.3; //0C
s_f1=2.3145; //kJ/kg.K
s_g1=6.4406; //kJ/kg.K
v_g1=0.132; //m^3/kg
h_fg1=1945.2; //kJ/kg
x1=0.95;
h_f2=709.3; //kJ/kg
h_fg2=2055.55; //kJ/kg
s_f2=2.0195; //kJ/kg
s_g2=6.6816; //kJ/kg.K
v_g2=0.255; //m^3/kg
x2=0.9;
x3=1;
s_f3=0.521; //kJ/kg K
s_g3=8.330; //kJ/kg K

h2=h_f2+x2*h_fg2;
h1=h_f1 + x1*h_fg1;
s1=s_f1 + x1*(s_g1-s_f1);
s2=s1;
ds_12=s2-s1;

s3=s_f3+x3*(s_g3-s_f3);
ds_23=s3-s2;

ds=ds_12+ds_23;
disp("(i) Change in entropy =")
disp(ds)
disp("kJ/kg K")

h3=h2;

disp("(ii) Change in enthalpy")
dh=h2-h1;
disp(dh)
disp("kJ/kg")


disp("(iii) Change in internal energy")
u1=h1-p1*x1*v_g1/10^3;
u2=h2-p2*x2*v_g2/10^3;
du=u2-u1;
disp("du=")
disp(du)
disp("kJ/kg")


// Only the expansion of steam from point 1 to 2 (i.e., isentropic expansion) is reversible because of unresisted flow whereas the expansion from point 2 to point 3 (i.e., throttling expansion) is irreversible because of frictional resistance to flow. Increase of entropy also shows that expansion from point 2 to point 3 is irreversible.


disp("(b) Using Mollier chart")
h1=2692; //kJ/kg
h2=2560; //kJ/kg
s1=6.23; //kJ/kg K
s2=s1;
s3=8.3; //kJ/kg K

disp("(i) Change in entropy =")
ds=s3-s1;
disp(ds)
disp("kJ/kg K")


disp("(ii) Change in enthalpy =")
dh=h2-h1;
disp(dh)
disp("kJ/kg")