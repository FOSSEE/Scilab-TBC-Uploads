//DFT and DFS of sinusoids
n2=0:1/2400:23/240;
xt=1+4*sin(120*%pi*n2')+4*sin(40*%pi*n2');
n=0:1/240:23/240;//F=9/32 hence N=32
xn=1+4*sin(120*%pi*n')+4*sin(40*%pi*n');
XDFT=abs(fft(xn,-1));
n1=0:23;
a=gca();
a.x_location="origin";
plot2d(n2,xt);
plot2d3('gnn',n,xn);
xset('window',1);
b=gca();
b.x_location="origin";
plot2d3('gnn',n1,XDFT);