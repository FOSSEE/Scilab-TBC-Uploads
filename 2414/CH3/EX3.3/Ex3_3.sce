clc;
clear all;
//chapter 3
//page no 82
//example 3.3
A=20;    //Volts
T=1*10^-3;    //second
function Vf=Fourier_transform(f,T,A)
    if f==0 then
        Vf=A*T;
    else
        Vf=A*T*sin(%pi*f*T)/(%pi*f*T);
        
    end
endfunction
mprintf('(a)Equation for fourier transform is \n V(f)=%.2f*sin(%.3f*pi*f)/(%.3f*pi*f)',A*T,T,T);
//Part b Calculation
f=[0 500 1000 1500];
for i=1:4
    Vf(i)=Fourier_transform(f(i),T,A)
end
//Part c calculation
RdB=20*log10(Vf ./ .02)
//Result Table
mprintf('\nf(Hz)     V(f)in V     RdB\n')
for i=1:4
    mprintf('%5i   %f    %f \n',f(i),Vf(i),RdB(i))
end
//All values are precise
