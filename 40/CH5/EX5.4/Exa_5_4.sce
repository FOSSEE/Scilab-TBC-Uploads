//DTfT of periodic signals
x=[3 2 1 2];//one period of signal
n=0:3;
k=0:3;
x1=x*exp(%i*n'*2*k*%pi/4)
dtftx=abs(x1)
x=[3 2 1 2 3 2 1 2 3];
n=-4:4;
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',n,x);
xtitle('discrete periodic time signal');
x2=[dtftx dtftx 8];
a=gca();
xset('window',1);
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,x2);
xtitle('DTFT of discrete periodic signal');