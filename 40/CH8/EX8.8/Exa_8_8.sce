//Relating DFT and DTFT
xn=[1 2 1 0];
XDFT=fft(xn,-1);
//for F=k/4,k=0,1,2,3
for k=1:4
    XF(k)=1+2*%e^(-%i*%pi*(k-1)/2)+%e^(-%i*%pi*(k-1));
end
XF,XDFT
disp(XF,'The DFT of x[n] is');