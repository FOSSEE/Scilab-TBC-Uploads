//Exa 4.11
clc;
clear;
close;
//when frequency=0.3GHz
// given :
f=0.3 //frequency in Ghz
f=0.3*10^9 //frequency in hertz
c=3*10^8 //speed of light in m/s
lambda=c/f //wavelength in meter
d1=1.6 // in Km
d1=1.6*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb1=20*log10(4*%pi*d1/lambda) // basic transmission loss in dB
disp(Lb1,"basic transmission loss in dB when d=1.6Km,f=0.3GHz:")
d2=16 // in Km
d2=16*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb2=20*log10(4*%pi*d2/lambda) // basic transmission loss in dB
disp(Lb2,"basic transmission loss in dB when d=16Km,f=0.3GHz:")
d3=160 // in Km
d3=160*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb3=20*log10(4*%pi*d3/lambda) // basic transmission loss in dB
disp(Lb3,"basic transmission loss in dB when d=160Km,f=0.3GHz:")
d4=320 // in Km
d4=320*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb4=20*log10(4*%pi*d4/lambda) // basic transmission loss in dB
disp(Lb4,"basic transmission loss in dB when d=320Km,f=0.3GHz:")
// when frequency is 3Ghz
// given :
f=3 //frequency in Ghz
f=3*10^9 //frequency in hertz
c=3*10^8 //speed of light in m/s
lambda=c/f //wavelength in meter
d1=1.6 // in Km
d1=1.6*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb1=20*log10(4*%pi*d1/lambda) // basic transmission loss in dB
disp(Lb1,"basic transmission loss in dB when d=1.6Km,f=3GHz:")
d2=16 // in Km
d2=16*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb2=20*log10(4*%pi*d2/lambda) // basic transmission loss in dB
disp(Lb2,"basic transmission loss in dB when d=16Km,f=3GHz:")
d3=160 // in Km
d3=160*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb3=20*log10(4*%pi*d3/lambda) // basic transmission loss in dB
disp(Lb3,"basic transmission loss in dB when d=160Km,f=3GHz:")
d4=320 // in Km
d4=320*10^3 // in meter
// formula : Lb=20*log10((4*(%pi)*d)/(lambda))
Lb4=20*log10(4*%pi*d4/lambda) // basic transmission loss in dB
disp(Lb4,"basic transmission loss in dB when d=320Km,f=3GHz:")
