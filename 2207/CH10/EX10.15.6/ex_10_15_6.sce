//Example 10.15.6: supply voltage per phase , slip ,slip frequency and percentage rotor loss
clc;
clear;
close;
Ns1=750;//
V_rms=240;// in volts
f2=25;//Hz
F1=50;//in Hz
Vs_rms=240/2;
N=1440;// in rpm
P=4;// pole
Ns=(120*F1)/4;
S=((Ns-N)/Ns);
S_frequency=S*F1;
fs12=S_frequency/4;//
S1=fs12/f2;
rotor_loss=S1/(1-S1);
n=Ns1-((S1*Ns1));//
disp(Vs_rms,"supply voltage (V) = ")
disp(S1*100,"slip,S(%) = ")
disp(S_frequency,"slip frequency at 50Hz (Hz) = ")
disp(fs12,"slip frequency at 25Hz (Hz) = ")
disp(rotor_loss ,"Rotor loss(%) = ")
disp(n,"speed in rpm is")
