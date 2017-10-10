//DFT and DFS of sinusoids
n2=0:1/1280:31/128;
xt=4*sin(72*%pi*n2');
n=0:1/128:31/128;//F=9/32 hence N=32
xn=4*sin(72*%pi*n');
XDFT=abs(fft(xn,-1));
n1=0:31;
a=gca();
a.x_location="origin";
plot2d(n2,xt);
plot2d3('gnn',n,xn);
xset('window',1);
b=gca();
b.x_location="origin";
plot2d3('gnn',n1,XDFT);