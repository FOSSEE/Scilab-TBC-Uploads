clear;
close;
clc;
T0=4;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0/2;
s=length(t)/length(t_temp);
dx=[];
x=[];
for i=1:s
    if modulo(i,2)==1  then
        dx=[dx -ones(1,length(t_temp))];
        x=[x .5*t_temp($:-1:1)];
    else
        dx=[dx ones(1,length(t_temp))];
        x=[x .5*t_temp]; 
    end
end
figure
a=gca();
plot2d(t,x,8)
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
figure
a=gca();
plot(t,dx,'r')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
w0=%pi/2;
for k=-10:10
    cc(k+11,:)=exp(-%i*k*w0*t);
    cdk(k+11)=dx*cc(k+11,:)'/length(t);
    if abs(cdk(k+11))<0.01 then
    cdk(k+11)=0;
    else if real(cdk(k+11))<0.1  then
    cdk(k+11)=-%i*imag(cdk(k+11));
    end
    end
    if k==0 then
        ck(k+11)=.5;
        c0=ck(k+11);
    else
       ck(k+11)=cdk(k+11)/(%i*k*w0); 
    end
end 
//trigmometeric form
a0=2*c0;
a=2*real(ck);
b=2*imag(ck);