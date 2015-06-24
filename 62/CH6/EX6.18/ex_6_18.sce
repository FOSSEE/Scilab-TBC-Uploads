clear;
close;
clc;
n=-10:10;
x=ones(1,length(n));
figure
subplot(2,1,1)
plot2d3(n,x)
plot(n,x,'r.')
xtitle('x[n]','n')
w=-5:0.01:5;
for i=1:length(w)
    if w(i)==0 then
        delta(i)=1;
    else 
        delta(i)=0;
    end
end
Xw=2*%pi*delta';
subplot(2,1,2)
plot(w,Xw);
xtitle('X(w)','w')