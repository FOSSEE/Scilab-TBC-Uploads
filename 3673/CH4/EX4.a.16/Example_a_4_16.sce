//Example_a_4_16 page no:182
clc;
x0=(%pi/3);
x1=%pi;
Vav=10*(1/%pi)*(integrate('sin(wt)','wt',x0,x1));
Vrms=sqrt(10^2*(1/%pi)*(integrate('sin(wt)^2','wt',x0,x1)));
disp(Vav,"the average value Vav is (in V)");
disp(Vrms,"the effective value Vrms is (in V)");
