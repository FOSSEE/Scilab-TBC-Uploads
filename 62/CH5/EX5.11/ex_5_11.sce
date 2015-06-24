clear ;
close;
clc;
T0=16;
t=-79.99:0.01:80;
t_temp=0.01:0.01:T0/4;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,4)==1  then
        x=[x ones(1,length(t_temp))];
    else
        x=[x zeros(1,length(t_temp))];
    end
end
a=gca();
plot(t,x,'r')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
w0=%pi/8;
for k=-30:30;
    cc(k+31,:)=exp(-%i*k*w0*t);
    ck(k+31)=x*cc(k+31,:)'/length(t);
    if abs(ck(k+31))<0.01 then
    ck(k+31)=0;
    //else if real(ck(k+11))<0.1  then
    //ck(k+11)=%i*imag(ck(k+11));
    //end
    end
    if k==0 then
      c0=ck(k+31);
    end
end 
k=-30:30;
figure
a=gca();
plot2d3(k,abs(ck));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('|ck|','k')
//part b
t_temp=0.01:0.01:T0/8;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,8)==1  then
        x=[x ones(1,length(t_temp))];
    else
        x=[x zeros(1,length(t_temp))];
    end
end
figure
a=gca();
plot(t,x,'r')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
w0=%pi/8;
for k=-30:30;
    cc(k+31,:)=exp(-%i*k*w0*t);
    ck(k+31)=x*cc(k+31,:)'/length(t);
    if abs(ck(k+31))<0.01 then
    ck(k+31)=0;
    //else if real(ck(k+11))<0.1  then
    //ck(k+11)=%i*imag(ck(k+11));
    //end
    end
    if k==0 then
      c0=ck(k+31);
    end
end 
k=-30:30;
figure
a=gca();
plot2d3(k,abs(ck));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('|ck|','k')