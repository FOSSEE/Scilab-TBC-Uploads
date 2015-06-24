//Wave Propagation : example 13-5 : (pg 652 & 653)
d=41.130383*10^6;//distance
c=2.997925*10^8;//velocity of light
f=14.25*10^9;//uplink frequency
h=c/f;//wavelength
x=(4*%pi*d)/h;
Lp=20*log10(x);//free-space path loss
printf("\nThe wavelength is calculated by, \nh=c/f = %.6f",h);
printf("\nThe free-space path loss(Lp) expressed in dB");
printf("\nLp(dB)= 20log(4.pi.d/h) = %.3f dB",Lp);