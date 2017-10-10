//Example_a_8_11 page no:332
clc;
L=0.2;
C=10*10^-6;
R=50;
fr=1/(2*%pi*sqrt(L*C));
Q=(2*%pi*fr*L)/R;
f1=fr-(R/(4*%pi*L));
f2=fr+(R/(4*%pi*L));
BW=f2-f1;
disp(fr,"the resonant frequency is (in Hz)");
disp(Q,"the quality factor is ");
disp(f1,"the lower frequency limit is (in Hz)");
disp(f2,"the upper frequency limit is (in Hz)");
disp(BW,"the bandwidth of the circuit is (in Hz)");
