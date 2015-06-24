// Example 7.2, page no-262
clear
clc

c=3*10^8         //speed of light 
R=10000          //path length
f=4              // operating frequencyin GHz
EIRP=50          //in dB
gr=20            //antenna gain in dB
rp=-120          // received power in dB
//(a)
lamda=c/(f*10^9)
pl=20*log10(4*%pi*R/lamda)

//(b)
Lp=EIRP+gr-rp
printf("(a)\n Operating wavelength = %.3f m\n Path loss(in dB) = %.2f dB",lamda,pl)
printf("\n\n (b)\n Path loss = %.0fdB",Lp)
