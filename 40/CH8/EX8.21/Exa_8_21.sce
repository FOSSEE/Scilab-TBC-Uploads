//A four point decimation-in-time FFT algorithm
x=[1 2 1 0];
w=-%i;
xdft=[0 0 0 0];
for i=1:4
    for j=1:4
        xdft(i)=xdft(i)+x(j)*w^((i-1)*(j-1));
    end
end
XDFT=dft(x,-1);
xdft,XDFT