clc
C=0.848; //kg
H2=0.152; //kg
O2_used=C*8/3 + H2*8;


disp("(i) Minimum weight of air needed for combustion")
w_min=O2_used*100/23;
disp("Minimum weight of air needed for combustion=")
disp(w_min)
disp("kg")

w_excess=w_min*0.15; //Excess air supplied

w_O2=w_excess*23/100; //Weight of O2 in excess air

w_total=w_min + w_excess; //Total air supplied for combustion
w_N2=w_total*77/100; //Weight of N2 in flue gases


disp("(ii) the volumetric composition of the products of combustion")

//For CO2
x1=3.109;
y1=44;
z1=x1/y1;

//For O2
x2=w_O2;
y2=32;
z2=x2/y2;

//For N2
x3=w_N2;
y3=28;
z3=x3/y3;

z=z1+z2+z3;

//For CO2
%V1=z1/z*100;
disp("%volume of CO2 =")
disp(%V1)
disp("%")

//For O2
%V2=z2/z*100;
disp("%volume of O2 =")
disp(%V2)
disp("%")

//For CO2
%V3=z3/z*100;
disp("%volume of N2 =")
disp(%V3)
disp("%")