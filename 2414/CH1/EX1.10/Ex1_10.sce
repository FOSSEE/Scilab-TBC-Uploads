clc;

//page 14
//ex-1.10
function [V]=voltage(PdBm)
    P=1*10^(-3)*(10^(PdBm/10));
    V=(75*P)^0.5;
endfunction
S=10;  //dBm
G1=13;  //dB
L1=26;  //dB
G2=20;  //dB
L2=29;  //dB
disp('(a)  The output levels are');
PdBm=S;
V=voltage(PdBm);
disp(V,'in Volts:',PdBm,'1. Signal source in dBm:');
PdBm=S+G1;
V=voltage(PdBm);
disp(V,'in Volts:',PdBm,'2. Line Amplifier in dBm:');
PdBm=S+G1-L1;
V=voltage(PdBm);
disp(V,'in Volts:',PdBm,'3. Cable section A in dBm:');
PdBm=S+G1-L1+G2;
V=voltage(PdBm);
disp(V,'in Volts:',PdBm,'4. Booster amplifier in dBm:');
PdBm=S+G1-L1+G2-L2;
V=voltage(PdBm);
disp(V,'in Volts:',PdBm,'5. Cable section B in dBm:');
disp('(b).  The output power to get a voltage of 6V');
V=6;   //volts
R=75;  //ohm
Po=(V^2)/R;
disp('W',Po,);
PodBm=10*log10(Po*1000/1);
disp('dBm',PodBm,'power in dBm');
GrdB=PodBm-PdBm;
disp('dB',GrdB,'The required gain is');
