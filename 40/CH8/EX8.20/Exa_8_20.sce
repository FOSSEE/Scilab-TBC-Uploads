//A four point decimation-in-frequency FFT algorithm
x=[1 2 1 0];
w=-%i;
xdft(1)=x(1)+x(3)+x(2)+x(4);
xdft(2)=x(1)-x(3)+w*(x(2)-x(4));
xdft(3)=x(1)+x(3)-x(2)-x(4);
xdft(4)=x(1)-x(3)-w*(x(2)-x(4));
XDFT=dft(x,-1);
xdft,XDFT