clc

h1=3250; //kJ/kg
h2=2170; //kJ/kg
h_f2=173.9; //kJ/kg

W=h1-h2;
Q=h1-h_f2;

n_thermal=W/Q;
disp("Thermal effifciency=")
disp(n_thermal);

x2=0.83; //From mollier chart
disp("x2=")
disp(x2)


disp("Second case")

h1=3250; //kJ/kg
h2=2807; //kJ/kg
h3=3263; //kJ/kg
h4=2426; //kJ/kg
h_f4=173.9; //kJ/kg
W=h1-h2+h3-h4;
Q=h1-h_f4+h3-h2;

n_thermal=W/Q;
disp("Thermal effifciency=")
disp(n_thermal);

x4=0.935; //From mollier chart
disp("x4=")
disp(x4)
