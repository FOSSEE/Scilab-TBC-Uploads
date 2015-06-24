clc

// D1=(5*b1/3/a)^(1/8)
// D2=(5*b1/3/a)^(1/8)

// But b2=2.5*b1
// Therefore D2=(2.5)^(1/8)*D1

D1=600; // mm

D2=(2.5)^(1/8)*D1;

disp("Revised estimate of the optimum pipe diameter =")
disp(D2)
disp("mm")