fc=900*10^6
r=1000
c=3*10^8
Yc=c/fc
l=((4*%pi*r)/Yc)^2// free space path loss
Lpf=10*log10(l)
printf('free space path loss Lpf=%.1f dB',Lpf)
