clc;
//page no 273
// prob no 6.3
// from the expresion given on the page no 272; (So/No)=(a+6n) dB where a=10log[3/[ln(1+u)]^2]
//check the ollowing code for L=64 and L=256
L=input("enter the value of L = ");
B=input("enter the bandwidth of signal in hertz = ");
n=log2(L);
Bt=n*B;
u=100;//given
a=10*log10(3/[log(1+u)]^2);
SNR=(a+(6*n));
disp(SNR,"SNR ratio is = ");
// Here the SNR ratio for the two cases are found out. The difference between the two SNRs is 12dB which is the ratio of 16. Thus the SNR for L=256 is 16 times the SNR for L=64. The former requires just about 33% more bandwidth compared to the later.