// calculating the ratio of output signal to noise signal 
clc;
disp('The noise voltage is')
Bw=100*10^3;
K=1.38*10^-23;
T=300;
R=120;
A=(K*T*R*Bw)^0.5;
En=2*A;
disp(En,'Noise voltage (V)=');
Eno=0.12*10^-3;
disp(Eno,'Noise voltage at output(V)=');
Ra=Eno/En;
disp(Ra,'Ratio of signal votage to Noise voltage =');
