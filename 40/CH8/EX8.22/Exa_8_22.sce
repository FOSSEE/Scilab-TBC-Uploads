//A 4-point DFT from a 3-point sequence
xn=[1;2;1];
w=exp(-%i*%pi/2);
for i=1:4
    for j=1:3
        WN(i,j)=w^((i-1)*(j-1));
    end
end
XDFT=WN*xn