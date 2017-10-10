//Example_a_9_1 page no:402
clc;
Vph=230;
Iph=15;
Il=Iph;
cos_pi=0.7;
sin_pi=0.71;
Vl=sqrt(3)*Vph;
P=sqrt(3)*Vl*Il*cos_pi;
Iac=Iph*cos_pi;
Irc=Iph*sin_pi;
disp(Vl,"the line voltage is (in V)");
disp(P,"the active power is (in W)");
disp(Iac,"the active component of power is (in A)");
disp(Irc,"the reactive component of power is (in A)");
