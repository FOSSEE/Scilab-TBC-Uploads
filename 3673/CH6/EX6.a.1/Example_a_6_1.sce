//Example_a_6_1 page no:233
clc;
Vmag=250;
Vang=100;
Imag=15;
Iang=30;
theta=100-30;
pf=cosd(theta);
active_power=(Vmag/sqrt(2))*(Imag/sqrt(2))*pf;
reactive_power=(Vmag/sqrt(2))*(Imag/sqrt(2))*sind(theta);
apparent_power=(Vmag/sqrt(2))*(Imag/sqrt(2));
disp(pf,"the power factor is ");
disp(active_power,"the active power is (in W)");
disp(reactive_power,"the reactive power is (in VAR)");
disp(apparent_power,"the apparent power is (in VA)");
//in text book reactive power calculation is wrong i.e 1761.9 is correct
