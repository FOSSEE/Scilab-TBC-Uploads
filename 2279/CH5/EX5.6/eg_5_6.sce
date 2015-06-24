//Fourier Series coefficients for Impulse train
clc
clear
close
//Assume period of the impulse train T=2
T=2;
t=-5*T:T:5*T;
for i=1:length(t)
    x(i)=1;
end
//Using sifting property of the impulse signal 
k=-10:10
for i=1:length(k)
    ak(i)=1/T;
end
subplot(2,1,1)
plot(t,x,'.')
xtitle("Impulse train","t","x(t)")
subplot(2,1,2)
plot(k,ak,'.')
xtitle("Fourier coefficients of impulse train","k","ak")
