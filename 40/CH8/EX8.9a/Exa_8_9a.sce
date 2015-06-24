//DFT and DFS of sinusoids
n2=0:0.5/1000:5.5/100;
xt=4*cos(100*%pi*n2');
n=0:(0.5)/100:(5.5)/100;//F=3/12 hence N=12
xn=4*cos(100*%pi*n');
XDFT=dft(xn,-1);
n1=0:11;
a=gca();
a.x_location="origin";
plot2d(n2,xt);
plot2d3('gnn',n,xn);
xset('window',1);
b=gca();
b.x_location="origin";
plot2d3('gnn',n1,XDFT);
