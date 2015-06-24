clear;
clc;
close;
w=-20:0.1:20;
wc=4*%pi;
for i=1:length(w)
    if w(i)>-wc & w(i)<wc then
        Hw(i)=1;
    else
        Hw(i)=0;
    end
end
a=gca();
plot(w,Hw);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('H(w)','w')
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
figure
a=gca();
plot(t,x,'r');
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
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
disp("since frequencies above 4*%pi are cut off only first and third harmonics exists in the output");
y=5+yc1*sin(%pi*t)+yc3*sin(3*%pi*t);
figure
a=gca();
plot(t,y);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('y(t)','t')
disp("y=5+(20/%pi)*sin(%pi*t)+20/(%pi*3)*sin(3*%pi*t)");