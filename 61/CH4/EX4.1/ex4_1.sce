//ex4.1
I_C=3.65*10^-3;    //collector current in amperes
I_B=50*10^-6;    //base current in amperes
B_DC=I_C/I_B;
I_E=I_B+I_C;
disp(B_DC,'B_DC')
disp(I_E,'emitter current in amperes')