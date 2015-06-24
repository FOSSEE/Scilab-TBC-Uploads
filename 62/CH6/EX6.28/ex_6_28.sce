clear;
close;
clc;
n=-10:10; 
x=[zeros(1,find(n==0)-1) ones(1,length(n)-find(n==0)+1)];
plot2d3(n,x)
plot(n,x,'r.')
xtitle('x[n]','n')
figure
w=-2:2;
Xw=x*exp(-%i*n'*w);
subplot(2,1,1)
plot2d(w,real(Xw));
xtitle('U[w] fourier transform','w')
for i=1:length(w)
    if w(i)==0 then
        delta(i)=1;
    else 
        delta(i)=0;
    end
end
Xwproof=%pi*delta'+ones(1,length(w))./(1-%e^(-%i*w));
subplot(2,1,2)
plot(w,Xwproof)
xtitle('%pi*delta+1/(1-e^i*w','w')
disp("it can be seen that both the figures are approximately same hence          X(w)=%pi*delta+1/(1-e^i*w");