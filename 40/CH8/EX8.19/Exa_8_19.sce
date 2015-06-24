//using DFT to find IDFT
XDFT=[4;-2*%i;0;2*%i];
XDFTc=[4;2*%i;0;-2*%i];
w=exp(-%i*%pi/2);
for i=1:4
    for j=1:4
        WN(i,j)=w^((i-1)*(j-1));
    end
end
xn=1/4*(WN*XDFTc)