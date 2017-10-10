//Example_a_8_5 page no:328
clc;
Z1=20+%i*10;
Z2=10-%i*30;
Z12=Z1*Z2/(Z1+Z2);
Z3=30;//here X is eliminated hence unknown variable cannot be used for calculation
Z=Z3+Z12;
X=imag(Z);
X=-X;//hence X is equated to zero
disp(X,"the value of X which will produce resonance is (in ohm)");
