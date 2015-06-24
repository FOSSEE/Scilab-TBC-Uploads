//clear//
clc
clear
exec("2.3data.sci");
CA0=(yA0*P0)/(R*T0);
FA0 = CA0*v0;
//V = FA0*X*(1/-rA)

V = FA0*inttrap(X,p)
disp("FA0 =")
disp(FA0)
disp("mol/s")
disp("V =")
disp(V)
disp ("dm^3")
disp("Answer is slightly differennt from the book because inttrap command of SCILAB uses trapezoidal integration, while in book it has been calculated using five point formulae.") 
