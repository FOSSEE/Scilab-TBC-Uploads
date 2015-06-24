//DTFS of x[n] =2cos((pi/3)*n+(pi/6))
clear;
close;
clc;
n = -3:3;
N = 6;
Wo = 2*%pi/N;
xn = 2*cos((%pi/3)*n+(%pi/6));
//By euler's theorem X[n] can be represented 
x_n=exp(%i*(%pi*n/3)+%pi/6)+exp(-%i*(%pi*n/3)+%pi/6)
for i=1:length(n)
    if n(i)==1 
        a(i)=exp(%i*%pi/6);
    elseif n(i)==-1
        a(i)=exp(-%i*%pi/6);
    else
        a(i)=0;
    end
end
for i=1:length(a)
    if real(a(i))==0 then
        phase(i)=0;
    else
    phase(i)=atan(imag(a(i))/real(a(i)));
end
end
subplot(2,1,1)
plot2d3('gnn',n,abs(a))
xtitle("MAgnitude spectrum","k","|ak|")
subplot(2,1,2)
plot2d3('gnn',n,phase)
xtitle("Phase spectrum","k","angle(ak)")
