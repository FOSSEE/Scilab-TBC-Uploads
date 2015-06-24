//Example 2.34
clc
disp("The name of the oscillator is Pierce oscillator")
disp("C1 = 1000 pF,  C2 = 100 pF,  f_s = 1 MHz")
ceq=(1000*100*10^-12)/1100
format(11)
disp(ceq,"C_eq(in F) = C1*C2 / C1+C2 =")
disp("At resonance, X_L  = X_Ceq  i.e.  2*pi*f*L = 1 / 2*pi*f*C_eq")
l=(1/(((2*%pi*10^6)^2)*(90.909*10^-12)))*10^6
format(4)
disp(l,"Therefore,  L(in uH) = 1/(2*pi*f)^2*C_eq =")
disp("The fig 2.61(a) shows the electrical equivalent of the crystal")
disp("At series resonance,")
disp("X_L = X_C for crystal")
disp("Therefore,  C = 90.909 pF for crystal")
disp("The mounting capacitance is about 1 to 2 pF")
