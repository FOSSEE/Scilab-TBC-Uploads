//A 3-point IDFT from 4-point DFT
XDFT=[4;-2*%i;0;2*%i];
w=exp(-%i*%pi/2);
for i=1:4
    for j=1:3
        WN(i,j)=w^((i-1)*(j-1));
    end
end
WI=WN';
xn=1/4*(WI*XDFT)