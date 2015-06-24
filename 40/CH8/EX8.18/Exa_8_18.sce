//The DFT from the matrix formulation
xn=[1;2;1;0];
w=exp(-%i*%pi/2);
for i=1:4
    for j=1:4
        WN(i,j)=w^((i-1)*(j-1));
    end
end
XDFT=WN*xn
