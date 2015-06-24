//example 8.3
clc; funcprot(0);
// Initialization of Variable
h1=3348.4;
h2=2741.8;
h3=3353.3;
h4=2428.5;
h6=181.94;
h5=173.88;
neta=(h1-h2-h4+h3-h6+h5)/(h1-h6+h3-h2);
disp(neta*100,"thermal efficiency in %");
mdot=100*1000*3600/(h1-h2-h4+h3-h6+h5);
disp(mdot,"mass flow rate in kg/h");
Qoutdot=mdot*(h4-h5)/3600/1000;
disp(Qoutdot,"energy outflow rate in MW");
//part2
h2=2832.8;
h4=2567.2;
neta=(h1-h2-h4+h3-h6+h5)/(h1-h6+h3-h2);
disp(neta*100,"thermal efficiency in %");
clear()
