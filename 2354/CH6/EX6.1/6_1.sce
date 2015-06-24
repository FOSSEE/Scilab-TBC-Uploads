//example 6.1
clc; funcprot(0);
// Initialization of Variable
Input=1000.0;
Tc=300.0;
Th=500.0;
Output=410.0;
neta=Output/Input*100;
nmax=(1-Tc/Th)*100;
disp(neta,"efficiency in %");
disp(nmax,"maximum efficiency in %");
disp("the system cannot exist");
clear()
