//signal reconstruction from samples
//(a)By step interpolation method
x=[-1 2 3 2];
t=2.5;
ts=1;
t1=ceil(t);
t2=floor(t);
x1t=x(t2)
//(b)By linear interpolation method
x2t=(x(t1)+x(t2))/2
//(c)By sinc interpolation method
x3t=0;x1=[1 2 3 4];
for k=1:4
    x3t=x3t+(x1(k)*sinc(%pi*(t-(k-1))));
end
x3t//sinc interpolated value of x(2.5)
//(d)raised cosine interpolation method
x4t=0;
for k=1:4
    p=(cos(0.5*%pi*(t-k+1))/(1-(t-k+1)^2));
    xt=x1(k)*sinc(%pi*(t-k+1))*p;
    x4t=x4t+xt;
end
x4t//raised cosine interpolated value of x(2.5)