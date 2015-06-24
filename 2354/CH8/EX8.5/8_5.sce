//example 8.5
clc; funcprot(0);
// Initialization of Variable
mdot=0.08;
h2s=264.7;
h1=247.23;
h4=85.75;
Th=299.0;
Wcdot=mdot*(h2s-h1);
disp(Wcdot,"work input in kW");
Qindot=mdot*(h1-h4)*60.0/211;
disp(Qindot,"refrigration capacity in ton");
Beta=(h1-h4)/(h2s-h1);
disp(Beta,"coefficient of performance");
Bmax=273/(Th-273);
disp(Bmax,"maximum coefficient of performance");
clear()
