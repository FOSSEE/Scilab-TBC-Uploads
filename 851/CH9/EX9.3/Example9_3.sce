//clear//
//Caption:Processing gain, PN sequence length, Jamming margin in dB
//Example9.3: Processing gain and Jamming Margin
clear;
clc;
close;
Tb = 4.095*10^-3;//Information bit duration
Tc = 1*10^-6;//PN chip duration
PG = Tb/Tc;//Processing gain
disp(PG,'The processing gain is:')
N = PG; //PN sequence length
m = log2(N+1);//feedback shift register length
disp(N,'The required PN sequence is:')
disp(m,'The feedback shift register length:')
Eb_No = 10;//Energy to noise density ratio
J_P = PG/Eb_No;//Jamming Margin
disp(10*log10(J_P),'Jamming Margin in dB:')
//Result
//The processing gain is:  4095.  
//The required PN sequence is: 4095.  
//The feedback shift register length: 12.  
//Jamming Margin in dB: 26.122539  
