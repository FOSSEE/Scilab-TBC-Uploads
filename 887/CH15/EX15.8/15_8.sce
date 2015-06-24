clc
//ex15.8
R!=10^7;      //reluctance of core
N_1=100;      //turns for coil 1
N_2=200;      //turns for coil 2
L_1=N_1^2/R!;      //self-inductance of coil 1
L_2=N_2^2/R!;      //self-inductance of coil 2
//here, complex number i represents i_1 in textbook
phi_1=N_1*%i/R!;      //flux produced by i(i_1)
L_21=N_2*phi_1;      //flux linkages of coil 2 from current in coil 1
M=L_21/%i;      //mutual inductance
//milli-(10^-3)
disp(L_1*10^3,'self-inductance of coil 1 in milli henry')
disp(L_2*10^3,'self-inductance of coil 2 in milli henry')
disp(M*10^3,'mutual inductance of the coils in milli henry')
