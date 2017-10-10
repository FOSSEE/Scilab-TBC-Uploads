//The importance of Periodic extension
//(a)For M=3
x=[1 2 1];
XDFT=fft(x,-1)'
w=exp(-%i*2*%pi/3);
for i=1:3
    for j=1:3
        WN(i,j)=w^((i-1)*(j-1));
    end
end
WI=WN';
xn=1/3*WI*XDFT
//The result is periodic with M=3 &amp; 1 period equals x[n]
//(b)For M=4
y=[1 2 1 0];
YDFT=fft(y,-1)'
w=exp(-%i*%pi/2);
for i=1:4
    for j=1:4
        WN(i,j)=w^((i-1)*(j-1));
    end
end
WI=WN';
yn=1/4*WI*YDFT