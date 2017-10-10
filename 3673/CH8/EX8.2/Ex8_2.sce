//Example 8_2 page no:297
clc;
R=10;//resistance in ohm
L=0.5*10^-3//inductance in henry;
C=10*10^-6;//capacitance in farad;
f=1/(2*%pi*sqrt(L*C));
f=f/1000;//converting to killoHertz
disp(f,"the resonant frequency is (in kHz)");
