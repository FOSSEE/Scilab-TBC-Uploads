clc;
//Example 1.14
//Page no 27


//solution:

//(a)
disp("Given B=100MHZ, S/N= 30dB = 1000");



B=(100*(10^6));
Sn=1000;

I=3.32*B*log10(Sn+1);

disp('bps',I,"I = ");

//(b)

disp("(b)If the SNR is increased by 4 times, the new")

SNR=Sn*4;

disp(SNR,"SNR = ");

i=3.32*B*log10(SNR+1);

disp('bps',i,"Therefore, the new information carrying capactiy is ")
