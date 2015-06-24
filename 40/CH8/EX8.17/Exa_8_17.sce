//concept of periodogram
xn=[0 1 0 -1];
N=4;
XDFT=dft(xn,-1);
for i=1:length(XDFT)
    p(i)=(1/N)*abs(XDFT(i)^2);
end
p//periodogram