//Example_a_6_6 page no:236
clc;
R=10;
V=200/sqrt(2);
Vr=120;
Vl=75;
IR=Vr;
I=120/10;
Xl=75/I;
Z=10+(%i*6.25);
Zmag=sqrt(real(Z)^2+imag(Z)^2);
pf=R/Zmag;
true_power=I^2*R;
reactive_power=I^2*imag(Z);
disp(pf,"the power factor in the circuit is ");
disp(true_power,"the true power in the circuit is (in W)");
disp(reactive_power,"the reactive power in the circuit is (in W)");
