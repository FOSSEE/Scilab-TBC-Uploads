//clear//
//Caption:Power Spectra of QPSK and MSK signals
//Figure7.30:Comparison of QPSK and MSK Power Spectrums
//clear;
//close;
//clc;
rb = input('Enter the bit rate in bits per second:');
Eb = input('Enter the Energy of bit:');
f = 0:1/(100*rb):(4/rb);
Tb = 1/rb; //bit duration in seconds
for i = 1:length(f)
  if(f(i)==0.5)
    SB_MSK(i) = 4*Eb*f(i);
  else
    SB_MSK(i) = (32*Eb/(%pi^2))*(cos(2*%pi*Tb*f(i))/((4*Tb*f(i))^2-1))^2;
  end
    SB_QPSK(i)= 4*Eb*sinc_new((2*Tb*f(i)))^2;
end
a = gca();
plot(f*Tb,SB_MSK/(4*Eb));
plot(f*Tb,SB_QPSK/(4*Eb));
poly1= a.children(1).children(1);
poly1.foreground = 3;
xlabel('Normalized Frequency ---->')
ylabel('Normalized Power Spectral Density--->')
title('QPSK Vs MSK Power Spectra Comparison')
legend(['Minimum Shift Keying','QPSK'])
xgrid(1)
//Result
//Enter the bit rate in bits per second:2
//Enter the Energy of bit:1
