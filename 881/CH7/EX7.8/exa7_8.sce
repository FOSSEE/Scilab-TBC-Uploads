clc;
//Example 7.8
//Page No 268



//solution

fc=110;
fn=109.985;
Vn=0.3;
Vc=6;
fd=75*(10^3);

//(a)

disp("(a)The frequency of the noise interference is the difference between the carrier frequency and the frequency of the single frequency interfering signal, ");

n=fc-fn;

disp('kHz',(n*10^3),"NI = ");

//(b)

disp("(b)substituting into equation 7-43 yields, ");

t=Vn/Vc;

disp('rad',t,"dt = ");

disp("substituting into equation 7-47 yields, ");

df=(Vn*n)/Vc;

disp('Hz',(df*10^6),"df = ");

//(c)

a=Vc/Vn;

disp(a,"(c)The voltage S/N ");

disp("The voltage S/N ratio after demodulation is found by substituting into equation 7-49");

sn=fd/(df*10^6);

disp(sn,"S/N = ");

ip=20*log10(100/20);
;
disp('dB',round(ip),"Thus, there is an signal to noise improvement of ")
