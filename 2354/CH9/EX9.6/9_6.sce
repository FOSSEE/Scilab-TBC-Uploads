//example 9.6
clc; funcprot(0);
// Initialization of Variable
ha=102.7;//Btu/lb
Va=909.3;//ft/s
h3=546.54;//Btu/lb
h2=216.2;//Btu/lb
pr4=113.8;
h5=265.8;//Btu/lb
pr3=233.5;
h1=102.7+Va^2/2/32.2/778;
pr1=1.051;
pra=0.6268;
p1=pr1/pra*11.8;
disp(p1,"Pressure in lbf/in^2");
p2=8*p1;
disp(p2,"Pressure in lbf/in^2");
p3=p2;
h4=h3+h1-h2;
p4=p3*pr4/pr3;
disp(p4,"Pressure in lbf/in^2");
V5=sqroot(2*(h4-h5)*32.2*778);
disp(V5,"velocity in ft/s (2069 mi/h)");
clear()
