clc
//Chapter7
//Ex_14
//Given
Co=5 //in pF
fa=1.0025 //in MHz
fs=1 //in MHz
R=20 //in ohms
C=Co*((fa/fs)^2-1)
disp(C,"Capacitance value in the equivalent circuit of the crystal in pF is")
L=1/(C*(2*%pi*fs)^2)
disp(L,"Inductance value in the equivalent circuit of the crystal in Henry is")
fs=fs*10^6 //in Hz
C=C*10^-12 //in F
Q=1/(2*%pi*fs*R*C)
disp(Q,"Quality factor of the crystal is")
