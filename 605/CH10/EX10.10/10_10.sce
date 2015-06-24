
Zs=20
Zo=50
ZL=30
S11=0.45*exp(%i*150*%pi/180)
S21=0.01*exp(-10*%pi/180*%i)
S12=2.05*exp(10*%pi/180*%i)
S22=0.4*exp(-150*%pi/180*%i)
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
Fs=(Zs-Zo)/(Zs+Zo)
printf("\nFs=(Zs-Zo)/(Zs+Zo)=%.3f",Fs)
FL=(ZL-Zo)/(ZL+Zo)
printf("\nFL=(ZL-Zo)/(ZL-Zo)=%.3f",FL)
Fin=S11+(S21*S12*FL)/(1-S22*FL)
disp(Fin,"Fin=")
Fout=S22+(S21*S12*Fs)/(1-S11*Fs)
disp(Fout,"Fout=")
GT=(1-mod(Fs)^2)*mod(S12)^2/mod(1-S11*Fs)^2*(1-mod(FL)^2)/mod(1-Fout*FL)^2
printf("\nGT=%.4f",GT)
GP=mod(S12)^2*(1-mod(FL)^2)/mod(1-S22*FL)^2/(1-mod(Fin)^2)
printf("\nGP=%.4f",GP)
GA=(1-mod(Fs)^2)/mod((1-S11*Fs))^2*mod(S12)^2/(1-mod(Fout)^2)
printf("\nGA=%.4f",GA)

printf("\nGT(dB)=%.1f dB\nGP(dB)=%.2f dB\nGA(dB)=%.2f dB",10*log10(GT),10*log10(GP),10*log10(GA))