clear ;
close;
clc;
T0=4;
t=-20.99:0.01:21;
t_temp=0.01:0.01:T0/2;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,2)==0  then
        x=[x zeros(1,length(t_temp))];
    else
        x=[x ones(1,length(t_temp))];
    end
end
a=gca();
plot(t,x,'r')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
w0=%pi/2;
for k=-10:10
    cc(k+11,:)=exp(-%i*k*w0*t);
    ck(k+11)=x*cc(k+11,:)'/length(t);
    if abs(ck(k+11))<0.01 then
    ck(k+11)=0;
    else if imag(ck(k+11))<0.01  then
    ck(k+11)=real(ck(k+11));
    end
    end
    if k==0 then
        c0=ck(k+11);
    end
end 
//trigmometeric form
a0=2*c0;
a=2*real(ck);
b=2*imag(ck);