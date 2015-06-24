clc
rho_Hg=13596; //kg/m^3
g=9.806; //m/s^2
h=0.76; //m

P=rho_Hg*g*h/1000; //kPa

disp("(i) Pressure of 80 cm of Hg")
h1=0.80; //m
P1=h1/h*P;
disp(P1)
disp("kPa")

disp("(ii) 30 cm Hg vacuum")
H2=0.30; //cm Hg vacuum
h2=h-H2; //cm of Hg absolute
disp("Pressure due to 46 cm of Hg")
P2=h2/h*P;
disp(P2)
disp("kPa")

disp("(iii) Pressure due to 1.35 m H2O gauge")
rho_H2O=1000; //kg/m^3
h3=1.35; //m
P3=rho_H2O*g*h3/1000;
disp(P3)
disp("kPa")

disp("(iv) 4.2 bar")
P4=4.2*10^2;
disp(P4)
disp("kPa")