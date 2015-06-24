clc

disp("(i) Heat abstracted from outside=")
Q1=2*10^5; //kJ/h
W=3*10^4; //kJ/h
Q2=Q1-W;
disp("Heat abstracted from outside=")
disp(Q2)
disp("kJ/h")


disp("(ii) Co-efficient of performance")
COP_hp=Q1/(Q1-Q2);
disp("Co-efficient of performance=")
disp(COP_hp)