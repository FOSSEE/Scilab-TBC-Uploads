//Example 9_15 page no:368
clc;
Zreal=2;
Zimg=3;
Vl=440;//line voltage
Iph=10;//phase current
Zph=sqrt(Zreal^2+Zimg^2);
PF=Zreal/Zph;
sinpi=0.83;
Il=sqrt(3)*Iph;
Active_power=sqrt(3)*Vl*Il*0.55;
Reactive_power=sqrt(3)*Vl*Il*sinpi;
Apparent_power=sqrt(3)*Vl*Il;
disp(Active_power,"the Active power is (in W)");
disp(Reactive_power,"the Reactive power is (in VAR)");
disp(Apparent_power,"the Apparent power is (in VA)");
//power varies slightly with textbook hence values are rounded off in text book
