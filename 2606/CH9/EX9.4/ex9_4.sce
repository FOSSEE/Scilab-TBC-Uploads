//Page Number: 9.12
//Example 9.4
clc;
//Given
//(a) 
H1=1;
H2=(1/2);
S0=(H1^2)/2;
w0=-2*%pi;
w1=2*%pi;
N0=(0.1/(2*%pi))*2*(integrate('1','w',w0,w1));
SNR=S0/N0;
disp(SNR,"SNR: ");

//(b)
S01=(H1^2*H2^2)/2;
N01=0.101;
SNR1=S01/N01;
disp(SNR1,"SNR1: ");

