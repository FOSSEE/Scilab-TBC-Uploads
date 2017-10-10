//DTFS of discrete periodic signal
clc
clear
close
N=2//asume N=2
n=-2*N:2*N
for i=1:length(n)
    if modulo(n(i),N)==0 then
    x(i)=1;
else
    x(i)=0;
end
end
subplot(2,1,1)
plot(n,x,'.')
xtitle("Input signal x[n]","n","x[n]");
k=-5:5;
for i=1:length(k)
    ak(i)=1/N;
end
subplot(2,1,2)
plot(k,ak,'.')
xtitle("Frequency spectrum","k","ak")
