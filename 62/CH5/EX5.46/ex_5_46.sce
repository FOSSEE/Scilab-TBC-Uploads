clear;
clc;
close;
T0=1;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,2)==1  then
        x=[x zeros(1,length(t_temp))];
    else
        x=[x 10*ones(1,length(t_temp))];
    end
end
d=gca()
plot(t,x,'r')
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
disp("y(t)=sum(H(kw0)*exp(%j*k*w0*t))");
//fourier series of x(t)
w0=%pi;
for k=-10:10
    cc(k+11,:)=exp(-%i*k*w0*t);
    ck(k+11)=x*cc(k+11,:)'/length(t);
    if abs(ck(k+11))<0.01 then
    ck(k+11)=0;
    else if real(ck(k+11))<0.1  then
    ck(k+11)=%i*imag(ck(k+11));
    end
    end
    if k==1 then
        c1=ck(k+11);
    end
    if k==3 then
        c3=ck(k+11);
    end
end 
yc1=2*abs(c1/(2+%i*w0));
yc3=2*abs(c3/(2+%i*w0*3));
disp(yc1,"first harmonic is");
disp(yc3,"third harmonic is");
