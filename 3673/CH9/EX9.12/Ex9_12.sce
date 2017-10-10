//Example 9_12 page no:364
clc;
Zreal=4;
Zimg=3;
Vl=400;
Il=12;
Zph=sqrt(Zreal^2+Zimg^2);
PF=Zreal/Zph;
sinpi=0.6;
Active_power=sqrt(3)*Vl*Il*PF;
Reactive_power=sqrt(3)*Vl*Il*sinpi;
Apparent_power=sqrt(3)*Vl*Il;
disp(Active_power,"the active power is (in W)");
disp(Reactive_power,"the reactive power is (in VAR)");
disp(Apparent_power,"the apparent power is (in VA)");
