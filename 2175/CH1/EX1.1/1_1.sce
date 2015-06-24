
clc;
p=3;//bar
v=0.18;//m^2/kg
p2=0.6;//bar

c=p*v^2;

v2=(c/p2)^0.5;

W=-c*(10^5)*[(1/v)-(1/v2)];
disp("Work done by the fluid is:");
disp("N m/kg",-W);
//Answers vary more than than +/-5 :
//Answers in the textbook is wrong
