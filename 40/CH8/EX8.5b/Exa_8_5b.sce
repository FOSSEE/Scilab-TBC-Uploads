//b1)modulation
XDFT=[4 -2*%i 0 2*%i];
xn=dft(XDFT,1)
for i=1:length(xn)
    zn(i)=xn(i)*%e^((%i*%pi*(i-1))/2);
end
disp(zn,'The IDFT of XDFT[k-1] is');
ZDFT=[2*%i 4 -2*%i 0];
zn1=dft(ZDFT,1)
//b2)periodic convolution
HDFT=(convol(XDFT,XDFT))
HDFT=[HDFT,zeros(8:12)];
HDFT=[HDFT(1:4);HDFT(5:8);HDFT(9:12)];
HDFT1=[0 0 0 0];
for i=1:4
    for j=1:3
        HDFT1(i)=HDFT1(i)+HDFT(j,i);
    end
end
HDFT1;
hn=dft(HDFT1,1)
hn1=4*(xn.*xn);
disp(hn1,'The IDFT of XDFT*XDFT is');
//b3)product
WDFT=XDFT.*XDFT;
wn=dft(WDFT,1)
wn1=convol(xn,xn);
wn1=[wn1,zeros(8:12)];
wn1=[wn1(1:4);wn1(5:8);wn1(9:12)];
WN=[0 0 0 0];
for i=1:4
    for j=1:3
        WN(i)=WN(i)+wn1(j,i);
    end
end
disp(WN,'The IDFT of XDFT.XDFT is');
//b4)Central ordinates and signal Energy
E=0;
for i=1:length(xn)
    E=E+abs(xn(i)^2);
end
disp(E,'the signal energy is'); 