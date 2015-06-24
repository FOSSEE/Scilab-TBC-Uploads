clc;
//Example 5.8
//Page no 198




//solution

A=-80; //dB
G1=33; //dB
G2=47; //dB
G3=25; //dB

G=G1+G2+G3;

disp('dB',G,"The sum of the gains is, ");

L1=3; //dB
L2=6; //dB
L3=8; //dB

L=L1+L2+L3;

disp('dB',L,"The sum of the losses is, ");

G4=G-L;

disp('dB',G4,"Thus, net receiver gains is, ");

B=A+G4;

disp('dBm',B,"and the audio signal level is, ");
