clear;
close;
clc;
T0=2;
t=-6:0.01:6;
x=[];
for i=1:length(t)
    if modulo(t(i),T0)==0  then
        x(i)=1;
    else
        x(i)=0;
    end
end
plot(t,x,'r')
//by sifting property
ck=1/T0; 
//trigmometeric form
a0=2*ck;
a=2*real(ck);
b=2*imag(ck);