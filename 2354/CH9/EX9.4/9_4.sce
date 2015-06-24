//example 9.4
clc; funcprot(0);
// Initialization of Variable
h1=300.19;
k=349.6;//Wcdot/mdot
h2=h1+k;
h3=1515.4;
mdot=5.807;
k2=h3-h2;//Qindot/mdot
neta=(565.6-k)/k2;
disp(neta*100,"thermal efficiency in %");
bwr=k/565.5;
disp(bwr*100,"back work ratio in %");
Wcycledot=mdot*(565.5-k);
disp(Wcycledot,"net power developed in kW");
clear()
