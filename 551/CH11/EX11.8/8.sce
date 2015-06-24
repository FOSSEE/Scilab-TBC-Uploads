clc
C=0.86;
H2=0.08;
S=0.03;
O2=0.02;

W_O2=C*8/3 + H2*8 + S*1;

A=W_O2-O2; //Weight of oxygen to be supplied per kg of fuel

W_min=A*100/23;
r_correct=1/W_min/1; //“correct” fuel-air ratio
r_actual=1/12;


disp("(i) Mixture strength")
s=r_actual/r_correct*100; //Mixture strength

richness=s-100;
disp("richness=")
disp(richness)
disp("%")
disp("This show that mixture is 6.5% rich.")

D=1/r_correct-1/r_actual;

CO=0.313; //kg
CO2=2.662; //kg
N2=9.24; //kg
SO2=0.06; //kg

disp("(ii) The percentage composition of dry flue gases")

//For CO
x1=0.313; //kg
y1=28;
z1=x1/y1;

//For CO2
x2=2.662; //kg
y2=44;
z2=x2/y2;

//For N2
x3=9.24; //kg
y3=28;
z3=x3/y3;

//For SO2
x4=0.06; //kg
y4=64;
z4=x4/y4;

z=z1+z2+z3+z4;

//Let percentage volume be denoted by V

V_CO=z1/z*100;
disp("Percentage volume of CO=")
disp(V_CO)
disp("%")

V_CO2=z2/z*100;
disp("Percentage volume of CO2=")
disp(V_CO2)
disp("%")

V_N2=z3/z*100;
disp("Percentage volume of N2=")
disp(V_N2)
disp("%")


V_SO2=z4/z*100;
disp("Percentage volume of SO2=")
disp(V_SO2)
disp("%")