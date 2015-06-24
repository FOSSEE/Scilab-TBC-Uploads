clear;
close;
clc;
T0=4;
t=-7.99:0.01:8;
t_temp=0.01:0.01:T0;
s=length(t)/length(t_temp);
dx=[];
x=[];
for i=1:s
    x=[x 0.5*t_temp($:-1:1)];
end
for i=1:length(t)
    if modulo(t(i),T0)==0  then
        dx(i)=1;
    else
        dx(i)=0;
    end
end
dx1=-1/T0;
figure
a=gca();
plot2d(t,x,6)
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
figure
plot(t,dx,'r');
plot(t,dx1);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('diff(x(t))','t')
w0=%pi/2;
//by sifting property
cdk=1/T0; 
for k=-10:10
    if k~=0 then
    ck(k+11)=cdk/(%i*k*w0);
 else
     ck(k+11)=.5;
     c0=ck(k+11);
    end
end
a0=2*c0;
ak=2*real(ck);
bk=-2*imag(ck);



