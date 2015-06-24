// page no 555
// Example 12.7
clc;
B=4; SNR=20.5; // given
r=20*(B+1);//as B=4
//output SNR is given as So/No=3*B^2*r*(m^2'/mp^2)
m=4;// m=mp/6m is given
SNRt=3*(B^2)*r*(1/m)^2;
disp(SNRt,"threshold SNR = ");
// to calculate output SNR in dB
SNRdB=20*log(SNR);
disp(+'dB',SNRdB,"Threshold SNR in dB = ");
if 20.5< SNRdB
  disp("system is in threshold")
else 
  disp('system is not in threshold");
  end
