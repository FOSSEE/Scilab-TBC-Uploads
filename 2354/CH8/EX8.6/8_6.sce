//example 8.6
clc; funcprot(0);
// Initialization of Variable
h2s=272.39;
h1=241.35;
mdot=0.08;
h4=99.56;
Wcdot=mdot*(h2s-h1);
disp(Wcdot,"work input in kW");
Qindot=mdot*(h1-h4)*60.0/211;
disp(Qindot,"refrigration capacity in ton");
Beta=(h1-h4)/(h2s-h1);
disp(Beta,"coefficient of performance");
clear()
