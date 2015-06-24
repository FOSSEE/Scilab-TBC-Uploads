//clear//
//Caption:Power spectra of M-ary PSK signals 
//Figure7.31 Comparison of Power Spectral Densities of M-ary PSK signals
rb = input('Enter the bit rate=');
Eb = input('Enter the energy of the bit=');
f = 0:1/100:rb;
Tb = 1/rb;  //Bit duration
M = [2,4,8];
for j = 1:length(M)
  for i= 1:length(f)
    SB_PSK(j,i)=2*Eb*(sinc_new(f(i)*Tb*log2(M(j)))^2)*log2(M(j));
  end
end
a=gca();
plot2d(f*Tb,SB_PSK(1,:)/(2*Eb))
plot2d(f*Tb,SB_PSK(2,:)/(2*Eb),2)
plot2d(f*Tb,SB_PSK(3,:)/(2*Eb),5)
xlabel('Normalized Frequency ---->')
ylabel('Normalized Power Spectral Density--->')
title('Power Spectra of M-ary signals for M =2,4,8')
legend(['M=2','M=4','M=8'])
xgrid(1) 
//Result
//Enter the bit rate in bits per second:2
//Enter the Energy of bit:1
