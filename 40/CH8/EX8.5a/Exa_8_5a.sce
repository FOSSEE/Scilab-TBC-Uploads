//properties of DFT
//a1)product
xn=[1 2 1 0];
XDFT=dft(xn,-1)
hn=xn.*xn
HDFT=dft(hn,-1)
HDFT1=1/4*(convol(XDFT,XDFT))
HDFT1=[HDFT1,zeros(8:12)];
HDFT2=[HDFT1(1:4);HDFT1(5:8);HDFT1(9:12)];
HDFT3=[0 0 0 0];
for i=1:4
    for j=1:3
        HDFT3(i)=HDFT3(i)+HDFT2(j,i);
    end
end
disp(HDFT3,'DFT of x[n]^2 is');
//a2)periodic convolution
vn=convol(xn,xn);
vn=[vn,zeros(8:12)];
vn=[vn(1:4);vn(5:8);vn(9:12)];
vn1=[0 0 0 0];
for i=1:4
    for j=1:3
        vn1(i)=vn1(i)+vn(j,i);
    end
end
VDFT=dft(vn1,-1);
VDFT1=XDFT.*XDFT;
disp(VDFT1,'DFT of x[n]*x[n] is');
//a3)signal energy(parcewell's theorem)
xn2=xn^2;
E=0;
for i=1:length(xn2)
    E=E+abs(xn2(i));
end
XDFT2=XDFT^2
E1=0;
for i=1:length(XDFT2)
    E1=E1+abs(XDFT2(i));
end
E,(1/4)*E1;
disp(1/4*E1,'The energy of the signal is');