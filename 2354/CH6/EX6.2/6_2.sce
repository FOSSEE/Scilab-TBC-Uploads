//example 6.2
clc; funcprot(0);
// Initialization of Variable
Qcdot=8000;
Wcycledot=3200.0;
Tc=268.0;
Th=295.0;
Beta=Qcdot/Wcycledot;
disp(Beta,"coeff. of performance");
Betamax=Tc/(Th-Tc);
disp(Betamax,"maximum coeff. of performance");
clear()
