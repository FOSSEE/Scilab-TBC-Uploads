clc;
Ap1=100; //power gain at stage 1
Ap2=4;   //power gain at stage 2
Ap3=2;   //power gain at stage3
ApT=Ap1*Ap2*Ap3; //total power gain of a multistage amplifier 
ApTdB=10*log10(ApT); //total power in dB
Ap1dB=10*log10(Ap1); //power gain at stage 1 in dB
Ap2dB=10*log10(Ap2); //power gain at stage 2 in dB
Ap3dB=10*log10(Ap3); //power gain at stage 3 in dB
ApT1dB=Ap1dB+Ap2dB+Ap3dB; ////total power in dB
disp('dB',ApT1dB,"ApT1dB=")//The answers vary due to round off error

disp('dB',ApTdB,"ApTdB=")//The answers vary due to round off error

if ApT1dB==ApTdB then
    disp('Proved total power gain ApT is equal to Ap1(dB)+Ap2(dB)+Ap3(dB).We have shown that you can determine total multistage gain by adding the individual dB power gain values')
end
                                
