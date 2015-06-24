//example 8.7
clc; funcprot(0);
// Initialization of Variable
h1=241.35;
h2s=272.39;
nc=0.8;//efficiency
h4=91.49;
h2=(h2s-h1)/nc+h1;
mdot=0.08;
Wcdot=mdot*(h2-h1);
disp(Wcdot,"work input in kW");
Qindot=mdot*(h1-h4)*60.0/211;
disp(Qindot,"refrigration capacity in ton");
Beta=(h1-h4)/(h2-h1);
disp(Beta,"coefficient of performance");
clear()
