clear; clc; close;

Vt=26*(10^(-3)); //thermal voltage
Ie=3.2*(10^(-3));	//emitter current
Beta = 150;//Common Emitter amplification factor
h_oe = 25*(10^(-6));
h_ob =0.5*(10^(-6));

re = Vt/Ie;
h_ie = Beta*re;
r_o = 1/h_oe;
disp("For the common emitter hybrid equivalent circuit :-")
disp(re,'re(ohms) =');
disp(h_ie,"hie(ohms) = ");
disp(r_o,"hoe(ohms) = ");

r_o = 1/h_ob;
alpha = 1;    //approximation
disp("For the common base re model :-")
disp(re,'re(ohms) =');
disp(alpha,"alpha = ");
disp(r_o,"ro(ohms) = ");
