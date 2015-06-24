
Zo=50
S11=0.97*exp(-43*%i*%pi/180)
S12=0.0
S21=3.39*exp(%i*140*%pi/180)
S22=0.63*exp(-%i*32*%pi/180)
FL=0.63*exp(%i*32*%pi/180)
Fs=0.97*exp(%i*43*%pi/180)
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
Fin=S11+S12*S21*FL/(1-S22*FL)
Fout=S22+S21*S12*Fs/(1-S11*Fs)
GTU=(1-mod(Fs)^2)/mod(1-mod(S11)*mod(Fs))^2*mod(S21)^2*(1-mod(FL)^2)/mod(1-mod(S22)*mod(FL))^2
printf("\nGTU=%.4f",GTU)
GP=1/(1-mod(Fin)^2)*mod(S21)^2*(1-mod(FL)^2)/(1-mod(S22)*mod(FL))^2
printf("\nGP=%.4f",GP)
GA=(1-mod(Fs)^2)*mod(S21)^2/(1-mod(S11)*mod(Fs))^2/(1-mod(Fout)^2)
printf("\nGA=%.4f",GA)





