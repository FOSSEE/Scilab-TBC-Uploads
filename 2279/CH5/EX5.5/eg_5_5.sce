//Fourier Series coefficients of the signal x(t)
//Assume the period of the signal T=10
clc
clear
close
T=1;
To=1/4;
//Assume the magnitude of the signal A=1
A=1;
t=-10:0.01:10;
for i=1:length(t)
    if t>To & t<-To then
        x(i)=0;
    else
        x(i)=A;
    end
end

Wo=2*%pi;

k=-5:5
for i=1:length(k)
    if k(i)==0 then
        ak(i)=1.5;
    else
        ak(i)=(sin(k(i)*%pi/2))/(k(i)*%pi);
    end
end

disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
disp("the givem signal is even and so it has no phase spectrum")
//PLotting frequency spectrum 
subplot(2,1,2)
plot(k,abs(ak),'.');
xtitle("Magnitude Spectrum","k","|ak|");
subplot(2,1,1)
plot(k,ak,'.');
xtitle("Ak","k","ak");
