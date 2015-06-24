//Scilab Code for Example 3.13 of Signals and systems by
//P.Ramakrishna Rao
//Complex Exponential Fourier Expansion
//A=3.14 or pi
clear;
close;
clc;
T0=4;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0/2;
s=length(t)/length(t_temp);
x=[];
for i=1:s
    if modulo(i,2)==1  then
        x=[x -ones(1,length(t_temp))*%pi];
    else
        x=[x ones(1,length(t_temp))*%pi];
    end
end
figure(1);
title('Signal');
ylabel('x(t)');
xlabel('t');
plot(t,x,'r')
w0=%pi/2;
for k=-10:10
    cc(k+11,:)=exp(-%i*k*w0*t);
    ck(k+11)=x*cc(k+11,:)'/length(t);
    if abs(ck(k+11))<0.01 then
    ck(k+11)=0;
    else if real(ck(k+11))<0.1  then
    ck(k+11)=%i*imag(ck(k+11));
    end
    end
    if k==0 then
        c0=ck(k+11);
    end
end 
q=abs(ck);
figure(2);
title('Magnitude Spectrum');
ylabel('|cn|');
xlabel('fo');
f=-10:1:10;
plot2d3(f,q)
