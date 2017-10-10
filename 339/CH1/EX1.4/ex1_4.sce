f=10^6:10^7:10^10;
mu0=4*%pi*10^-7;
rs=(4.8*10^-6).*sqrt(f);
re=(33.9*10^12) ./f;
c=47*10^-12;
w=2*%pi.*f;
l=2*1.25*10^-2;
a=2.032*10^-4;
temp=log(2*l/a)/log(%e);
lex=mu0*l*(temp-1)/(2*%pi);          //external inductance
z=1 ./(1 ./re +w*c*%i)+rs+w.*lex*%i; // impedance of frequency dependent capacitor
zideal=1 ./(w*c*%i);    //impedance of an ideal capacitor
plot2d("gll",f,abs(z));
plot2d(f,abs(zideal));
title("Frequency responce of a high frequency capacitor");
xlabel('Frequency  (f) in  Hz');
ylabel('Absolute impedance  (|Z|) in ohms');