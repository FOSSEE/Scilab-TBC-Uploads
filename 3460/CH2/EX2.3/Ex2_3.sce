clc;
//Need to find ZT,L and C
Z_T=1000; //R at resonant frequency in ohm
disp(+'ohm',Z_T,'Z_t  =')
X_L=812; //in ohm
fr=3920; //in Hz
pi=3.14
//since X_L=2*pi*fr*L
L=X_L/(2*pi*fr);
disp(+'Henry',L,'Inductance L  =')
//since X_c=1/(2*pi*fr*C)
X_C=812 //in ohm
C=1/(2*pi*fr*X_C)
disp(+'Faraday',C,'capacitance =')
