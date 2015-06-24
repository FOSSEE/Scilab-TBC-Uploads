//Example 10.15.2 :Supply voltage per phase,slip,slip frequency ,slip and rotor loss
clc;
clear;
close;
//given data :
format('v',6)
V_rms=240;// in volts
F1=50;//in Hz
Vs_rms=240/2;
disp("part (1)")
disp(Vs_rms,"supply voltage (V) = ")
disp("part (2)")
N=1440;// in rpm
P=4;// pole
Ns=(120*F1)/4;
S=((Ns-N)/Ns);
disp("slip is "+string(S)+" or "+string(S*100)+" % ")
disp("part (3)")
S_frequency=S*F1;
disp(S_frequency,"slip frequency(Hz) = ")
disp("part (4)")
f=2;//Hz
f1=25;//Hz
s=(f/f1);//
disp("slip is "+string(s)+" or "+string(s*100)+" % ")
disp("part (5)")
F2=25;//in Hz
S1=(S_frequency/F2);
rotor_loss=S1/(1-S1);
disp(rotor_loss ,"Rotor loss(%) = ")
