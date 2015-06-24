//DTFT of x[n]=a^abs(n)
a=0.5;
n=-9:9;
x=a^abs(n);
//Discrete time Fourier Transform
k=0:(4/1000):4;
w=(2*%pi*k)/4;
xw=x*exp(%i*n'*w);
xw_mag=real(xw);
w=[-mtlb_fliplr(xw_mag),w(2:1001)];
xw_mag=[mtlb_fliplr(xw_mag),xw_mag(2:1001)];
figure
subplot(2,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,x);
xtitle('discrete time sequence x[n]');
subplot(2,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(w,xw_mag);
title('discrete time fourier transform x(exp(jw))');