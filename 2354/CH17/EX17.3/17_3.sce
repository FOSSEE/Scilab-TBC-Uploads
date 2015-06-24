//example 17.3
clc; funcprot(0);
// Initialization of Variable
u=60;//m/s
Nu5=546;
nu=26.41e-6;
L4=0.2;
L5=0.25;
Pr=0.69;
Re4=u*L4/nu;
Re5=u*L5/nu;
Nu4=0.664*Re4^0.5*Pr^0.33;
h14=Nu4*0.0338/L4;
Nu4=0.664*Re5^0.5*Pr^0.33;
h15=Nu5*0.0338/L5;
qconv=(h15*L5-h14*L4)*(230-25);
disp(qconv,"heat transfer rate in W");
clear()
