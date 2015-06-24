//example 8.2
clc; funcprot(0);
// Initialization of Variable
h1=2758.0;
h2=1939.3;
h3=173.88;
h4=h3+8.06/0.85;
neta=(h1-h2-h4+h3)/(h1-h4);
disp(neta*100,"thermal efficiency in %");
mdot=100*1000*3600/(h1-h2-h4+h3);
disp(mdot,"mass flow rate in kg/h");
Qindot=mdot*(h1-h4)/3600/1000;
disp(Qindot,"energy inflow rate in MW");
Qoutdot=mdot*(h2-h3)/3600/1000;
disp(Qoutdot,"energy outflow rate in MW");
mcwdot=mdot*(h2-h3)/(146.68-62.99);
disp(mcwdot,"mass flow rate in kg/h");
clear()
