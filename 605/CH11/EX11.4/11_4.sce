
//for transistor A
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction

S11=0.45*exp(%i*%pi/180*150)
S12=0.01*exp(-%i*%pi/180*10)
S21=2.05*exp(%i*%pi/180*10)
S22=0.4*exp(-%i*%pi/180*150)
UA=(mod(S12)*mod(S21)*mod(S11)*mod(S22))/(1-mod(S11)^2)/(1-mod(S22)^2)
disp(UA,"UA=")
//for transistor B
S11=0.641*exp(-%i*%pi/180*171.3)
S12=0.057*exp(%i*%pi/180*16.3)
S21=2.058*exp(%i*%pi/180*28.5)
S22=0.572*exp(-%i*%pi/180*95.7)
UB=(mod(S12)*mod(S21)*mod(S11)*mod(S22))/(1-mod(S11)^2)/(1-mod(S22)^2)
disp(UB,"UB=")








