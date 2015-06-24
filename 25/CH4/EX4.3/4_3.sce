//example:-4.3,page no.-167.
//program to find out the highest usable frequency.
a=0.000889;b=0.0029464;eipsilar=2.2;c=3*10^8;
// here (b/a)=3.3,so for this kc*a=0.47
kc=0.47/a;
fc=(c*kc)/(2*%pi*sqrt(eipsilar))
fc=fc/(10^9);
fmax=0.95*fc;
disp(fmax,'maximum usable frequency in GHZ=')