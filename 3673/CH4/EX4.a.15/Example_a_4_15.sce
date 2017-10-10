//Example_a_4_15 page no:181
clc;
x0=0;
x1=%pi;
Vav=5*(1/%pi)*(integrate('sin(wt)','wt',x0,x1));
rms=sqrt(5^2*(1/%pi)*(integrate('sin(wt)^2','wt',x0,x1)));
disp(Vav,"the average value is ");
disp(rms,"the effective value of rms is ");
