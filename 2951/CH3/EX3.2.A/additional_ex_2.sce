clear;
clc;


Fm=3; //frequency of message signal
Fc=8; //frequency of carrier signal
Ea=5;
Eb=10;
m=Ea/Eb; //modulation index

disp(m,"m=");
USf=Fc+Fm*10^(-3);//Upper Sideband frequency
LSf=Fc-Fm*10^(-3);//Lower sideband frequency
disp(USf,"USf(Mhz)=");
disp(LSf,"LSf(Mhz)=");
Amp=m*Eb/2;// amplitude of each sideband
disp(Amp,"amp(v)=");



function[x,Vm,Vc]=ampmod(Ea,Eb,m,Fc,Fm)
    t=0:0.005:5;
    
    Vm = Ea*sin(2*%pi*Fm*t);
    Vc = Eb*sin(2*%pi*Fc*t);
   
    x = ((Eb+Ea*sin(2*%pi*Fm*t))).*(sin(2*%pi*Fc*t));
    
    subplot(3,1,2);
    plot2d(t,x);
    title('Amplitude Modulated Signal');
endfunction

ampmod(Ea,Eb,m,Fc,Fm)//amplitude modulation
