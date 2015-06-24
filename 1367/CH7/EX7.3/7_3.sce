//Find various Modulous of elasticity
//Ex7.3
clear;
close;
a1=222*10^9;//in N
a2=168*10^9;//in N
e1=1.90;//in sqm
e2=1.42;//in sqm
da=a1-a2;//in N
de=e1-e2;//in sqm
e_tan=da/de;
e_tann=e_tan*10^-9;//in Gpa
disp(e_tann,"Tangent Modulous of elasticity (in Gpa) = ");
a3=180*10^9;//in N
e3=1.46;//in sqm
e_sec=10^-9*a3/e3;//in Gpa
disp(e_sec,"Secant modulous of elasticity (in Gpa) = ");
a=85*10^6;
e=.68*10^-3;
e_y=10^-9*a/e;//in Gpa
disp(e_y,"Youngs modulous (in Gpa) = ");