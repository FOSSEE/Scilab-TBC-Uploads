//Example 8_4 page no:303
clc;
R=10;//resistance in ohm
L=0.1;//inducatance in henry
C=50*10^-6;//capacitance in farad
V=50;
fl=(1/(2*%pi*sqrt(L*C)))*(sqrt(1/(1-((100*50*10^-6)/2*0.1))));
disp(fl,"frequency at which voltage is maximum across inductor is (in Hz)");
fl=(1/(2*%pi))*(sqrt(200000-500));
disp(fl,"frequency at which voltage is maximum across capacitor is (in Hz)");
f=1/(2*%pi*sqrt(L*C));
disp(f,"the resonant frequency is (in Hz)");
//in text book square root values are rounded so value varies by 0.82
