clc

A=992/284*100/23; //Air required for complete combustion

B=13; //kg/kg of fuel; Air actually supplied

D=A-B; //Deficiency of air

W_CO2=0.466*11/3;
W_CO=0.379*7/3;
W_H2O=22/142*9;
W_N2=13*0.77;

//For CO2
x1=W_CO2
y1=44;
z1=x1/y1;

//For CO
x2=W_CO;
y2=28;
z2=x2/y2;

//For H2O
x3=W_H2O;
y3=18;
z3=x3/y3;

//For N2
x4=W_N2;
y4=28;
z4=x4/y4;

z=z1+z2+z3+z4;

%CO2=z1/z*100;
disp("Percentage of CO2=")
disp(%CO2)
disp("%")

%CO=z2/z*100;
disp("Percentage of CO=")
disp(%CO)
disp("%")

%H2O=z3/z*100;
disp("Percentage of H2O=")
disp(%H2O)
disp("%")

%N2=z4/z*100;
disp("Percentage of N2=")
disp(%N2)
disp("%")