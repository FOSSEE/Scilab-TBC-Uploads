clc;
//Example 8.2   
//Page no 309



//Solution

B=200*(10^3); //kHz
NF=8; //dB
T=100; //K
m=1; 

a=37-17; //dB

disp('dB',a," the prediction signal to noise ratio must be atleast, ");

b=20+8; //dB

disp('dB',b,"Therefore, for an overall receiver noise figure equal to 8dB, the S/N ratio at the input to the receiver must be atleast, ");

disp("The receiver input noise power is, ");

K=(1.38*(10^-23));

N=10*log10((K*T*B)/0.001);

disp('dBm',N,"N(dB) = ");

disp("Consequently, the minimum receiver signal power for a 28dB S/N ratio is, ");

S=N+28;

disp('dBm',S,"S = ");
