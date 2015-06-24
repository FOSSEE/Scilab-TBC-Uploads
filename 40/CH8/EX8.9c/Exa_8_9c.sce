//DFT and DFS of sinusoids
n2=0:1/840:6/21;
xt=4*sin(72*%pi*n2')-6*cos(12*%pi*n2');
n=0:1/21:6/21;//F=3/12 hence N=12
xn=4*sin(72*%pi*n')-6*cos(12*%pi*n');
XDFT=abs(dft(xn,-1));
n1=0:6;
a=gca();
a.x_location="origin";
plot2d(n2,xt);
plot2d3('gnn',n,xn);
xset('window',1);
b=gca();
b.x_location="origin";
plot2d3('gnn',n1,XDFT);
