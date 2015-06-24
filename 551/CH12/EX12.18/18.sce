clc
p1=15; //bar
p2=4; //bar
p4=0.1; //bar

h1=2920; //kJ/kg
h2=2660; //kJ/kg
h3=2960; //kJ/kg
h4=2335; //kJ/kg

W=h1-h2+h3-h4;
disp("work done per kg of steam")
disp(W)
disp("kJ/kg")

h_reheat=h3-h2;
disp("Amount of heat supplied during reheat =")
disp(h_reheat)
disp("kJ/kg")

h_4a=2125;  //kJ/kg

W1=h1-h_4a;
disp("Work output without reheat =")
disp(W1)
disp("kJ/kg")