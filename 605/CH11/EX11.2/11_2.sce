
Zo=50
S11=0.6*exp(-%i*155*%pi/180)
S22=0.48*exp(-%i*20*%pi/180)
S12=0
S21=6*exp(%i*180*%pi/180)
Ss11=0.606*exp(%i*155*%pi/180)
Ss22=0.48*exp(%i*20*%pi/180)
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
//k=(1-mod(S11)^2-mod(S22)^2+mod(del)^2)/(2*mod(S12*S21))
del=mod(S11*S22-S12*S21)
disp(mod(del),"mod(del)=")
GTUmax=(1-mod(Ss11)^2)*mod(S21)^2/mod((1-mod(S11)^2))^2*(1-mod(Ss22)^2)/mod((1-mod(S22)^2))^2
disp(GTUmax,"GTUmax=")
disp(10*log10(GTUmax),"GTUmax in dB=")