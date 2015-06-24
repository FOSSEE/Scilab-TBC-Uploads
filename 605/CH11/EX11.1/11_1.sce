
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
S11=0.894*exp(-%i*60.6*%pi/180)
S12=0.02*exp(%i*62.4*%pi/180)
S21=3.122*exp(%i*123.6*%pi/180)
S22=0.781*exp(-%i*27.6*%pi/180)
del=mod(S11*S22-S12*S21)
k=(1+mod(del)^2-mod(S11)^2-mod(S22)^2)/2/mod(S12*S21)
disp(del,"|del|=mod(S11*S22-S12*S21)=")
disp(k,"k=(1+mod(del)^2-mod(S11)^2-mod(S22)^2)/2*mod(S12*S21)=")

