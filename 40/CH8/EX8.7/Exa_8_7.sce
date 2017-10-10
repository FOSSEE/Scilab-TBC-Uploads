//relating DFT and IDFT
XDFT1=[4 -2*%i 0 2*%i];
xn1=fft(XDFT1,1);
disp(xn1,'The IDFT of XDFT1');
XDFT2=[12 -24*%i 0 4*%e^(%i*%pi/4) 0 4*%e^(-%i*%pi/4) 0 24*%i];
xn2=fft(XDFT2,1);
disp(xn2,'The IDFT of XDFT1');