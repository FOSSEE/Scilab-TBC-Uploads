//example 5.2
clc; funcprot(0);
qo=100;
H1=3;
H2=5;
//from table
IaH2=0.126;
IaH1=0.175;
deltasigma=qo*((H2*IaH2-H1*IaH1)/(H2-H1));
disp(deltasigma,"change in pressure in kN/m^2");
TS=4*deltasigma;
disp(TS,"total change in pressure in kN/m^2");

