clc
//Example 16.13
disp('Given')
disp('Voltage gain = 40dB and cutoff frequency = 10k Hz')
Av_dB=40
Av=10^(Av_dB/20)
f=10*10^3
B=2*%pi*f
//From figure 16.41(a)
disp('1+Rf/R1=100(Gain)')
//From figure 16.41(b)
//The transfer function is 
disp('V+= Vi*(1/sC)/(1+1/sC)')
//Combining two transfer functions
disp('V0 = Vi*(1/sC)/(1+1/sC)*(1+Rf/R1)')
//The maximum value of the combined transfer function is
disp('Maximum value is V0 = Vi*(1+Rf/R1)')
disp('Let R1=1k ohm')
R1=10^3
Rf=(Av-1)*R1
printf("Rf= %d kohm \n",Rf*10^-3);
disp('C=1 uF')
C=10^-6
//B=1/(R2*C)
R2=1/(C*B)
printf("R2= %3.2f ohm \n",R2);