//example 9.3
clc; funcprot(0);
// Initialization of Variable
h4=808.5;
h2=579.9;
h3=1515.4;
h1=300.19;
T=300;//temperature
R=8314;//gas constant
M=28.97;//mass molecular
neta=(h3-h4-h2+h1)/(h3-h2);
disp(neta*100,"thermal efficiency in %");
bwr=(h2-h1)/(h3-h4);
disp(bwr*100,"back work ratio in %");
mdot=5*10^5*M/R/T;
Wcycledot=mdot*[h3-h4-h2+h1];
disp(Wcycledot,"net power developed in kW");
clear()
