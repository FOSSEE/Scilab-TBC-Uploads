//example 8.1
clc; funcprot(0);
// Initialization of Variable
h1=2758.0;
h2=1794.8;
h3=173.88;
h4=h3+1.0084/1000*(8-0.008)*1000;
neta=(h1-h2-h4+h3)/(h1-h4);
disp(neta*100,"thermal efficiency in %");
bwr=(h4-h3)/(h1-h2);
disp(bwr*100,"back work ratio in %");
mdot=100*1000*3600/(h1-h2-h4+h3);
disp(mdot,"mass flow rate in kg/h");
Qindot=mdot*(h1-h4)/3600/1000;
disp(Qindot,"energy inflow rate in MW");
Qoutdot=mdot*(h2-h3)/3600/1000;
disp(Qoutdot,"energy outflow rate in MW");
disp(Qoutdot/Qindot*100,"ratio of energy outflow/inflow in %");
mcwdot=mdot*(h2-h3)/(146.68-62.99);
disp(mcwdot,"mass flow rate in kg/h");
clear()
