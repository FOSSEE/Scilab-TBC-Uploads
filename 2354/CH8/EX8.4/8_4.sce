//example 8.4
clc; funcprot(0);
// Initialization of Variable
h1=3348.4;
h7=705.3;
h6=697.22;
h5=174.6;
h4=173.88;
h2=2832.8;
h3=2249.3;
k1=h1-h2+0.8034*(h2-h3);//Wt/m1
k2=h7-h6+0.8034*(h5-h4);//Wp/m1
k3=h1-h7;//Qin/m1
neta=(k1-k2)/k3;
disp(neta*100,"thermal efficiency in %");
m1dot=100*1000*3600/(k1-k2);
disp(m1dot,"mass flow rate in kg/h");
clear()
