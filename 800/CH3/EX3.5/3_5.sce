//clear//
clc
clear
exec("3.5data.sci");
CD=CA0*(X/3);
CB=CA0*((CB0/CA0)-(X/3));
CD1=CA0*(X1/3);
CB1=CA0*((CB0/CA0)-(X1/3));
disp("For 20% conversion")
disp("CD =")
disp(CD)
disp ("mol/dm^3")
disp("CB =")
disp(CB)
disp("mol/dm^3")
disp("For 90% conversion")
disp("CD =")
disp(CD1)
disp ("mol/dm^3")
disp("CB =")
disp(CB1)
disp("mol/dm^3")
