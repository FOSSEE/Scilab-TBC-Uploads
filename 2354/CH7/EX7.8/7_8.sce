//example 7.8
clc; funcprot(0);
// Initialization of Variable
p1=1;//pressure
pr2=21.18;
pr1=1.3860;
k=1.39;
T2=1160;//temperature
T1=540;//temperature
p=p1*pr2/pr1;
disp(p,"pressure in atm");
p2=p1*(T2/T1)^(k/(k-1));
disp(p2,"Pressure final in atm");
clear()
