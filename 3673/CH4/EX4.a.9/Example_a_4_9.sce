//Example_a_4_9 page no:179
clc;
f=2*1000;
C=0.01*10^-6;
Xc=1/(2*%pi*f*C);
Xc=Xc/1000;//converting to killo ohm
disp(Xc,"the capacitive reactance is (in killoOhm)");
