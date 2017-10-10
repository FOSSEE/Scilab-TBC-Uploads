//Example_a_7_5 page no:274
clc;
Rl=4;
I=(50*(-%i*10))/((5-(%i*6)+3+(%i*4)-(10*%i)))
V=I*(3+(3.99*%i));
Zab=4+(%i*3.5);
Vmag=sqrt(real(V)^2+imag(V)^2);
I2=Vmag/8;
P=I2^2*Rl;
disp(P,"the maximum power delivered to the load is (in W)");
//the power varies slightly in text book the value of V is rounded off so the result varies slightly
