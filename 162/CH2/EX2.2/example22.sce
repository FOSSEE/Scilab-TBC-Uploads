clear ;
close;
clc;
T0=4;
t=.01:0.01:2*T0;
t_temp=0.01:0.01:T0/2;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,2)==0 then
        x=[x zeros(1,length(t_temp))];
    else
        x=[x ones(1,length(t_temp))];
    end
end
a=gca();
plot(t,x)
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
w0=%pi/2;
for k=1:5
    cc(k,:)=exp(-%i*k*w0*t);
    ck(k)=x*cc(k,:)'/length(t);
    if abs(ck(k))<0.01 then
    ck(k)=0;
    else if imag(ck(k))<0.01 then
    ck(k)=real(ck(k));
    end
    end
   
end 
a=2*real(ck);
b=2*imag(ck);
disp(b,'bn=');