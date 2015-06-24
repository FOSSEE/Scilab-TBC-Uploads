clc;
// page no 728
// prob no 19.6
// refer fig 19.27 of the page no 729
// from fig, we can write down the values directly as given
In1=100*10^-3;//expressed in mV
In1_dBmV=20*log10(In1/1);
disp('dBmV',In1_dBmV,'The input of Amp 1 is');
// this above calculated signal is applied to the input of the first amplifier,i.e. head-end signal processing
G1=40;// gain of Amp 1 expressed in dB
// o/p level of Amp 1 is
Out1=In1_dBmV + G1;
disp('dBmV',Out1,'The output of Amp 1 is');
L=15;//expressed in dB
// The input level of Amp 2 is
In2_dBmV=Out1-L;
disp('dBmV',In2_dBmV,'The input of Amp 2 is');
G2=25;//gain of Amp2 expressed in dB
// o/p level of Amp 2 is
Out2=In2_dBmV+G2;
disp('dBmV',Out2,'The output of Amp 2 is');
L1=10;// loss in cable
L2=12;//loss in directional coupler
// The input level of Amp 3 is
In3_dBmV=Out2-L1-L2;
disp('dBmV',In3_dBmV,'The input of Amp 3 is');
G3=20;//gain of Amp3 expressed in dB
Out3=In3_dBmV+G3;
disp('dBmV',Out3,'The output of Amp 3 is');
// There is further 3dB cable loss and 20dB loss in the tap
L3=3;//loss in cable
L4=20;// loss in tap
//signal strength at the tap is
Vdrop_dBmV=Out3-L3-L4;
V_drop=10^(Vdrop_dBmV/20);// expressed in mV
disp('mV',V_drop,'Signal strength at subscriber tap is');
// Calculation of power into 75 ohm
R=75;//expressed in ohm
Pdrop = (V_drop*10^-3)^2/R;
Pdrop_dBm=10*log10(Pdrop/10^-3);
disp('dBm',Pdrop_dBm,'The power at the end is');