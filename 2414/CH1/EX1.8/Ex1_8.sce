clc;

//page 13
//ex-1.8

G1=5000;
L=2000;
G2=400;
G=G1*(1/L)*G2;   //Absolute gain
disp(G,'(a)  Net absolute gain is:');
GdB=10*log10(G);  //System decibell gain
disp('dB',GdB,+'(b)  System Decibel gain is:');
G1dB=10*log10(G1);
LdB=10*log10(L);
G2dB=10*log10(G2);
disp('(c)   Individual stage gains are:');
disp(G1dB,'G1dB=');
disp(LdB,'LdB=');
disp(G2dB,'G2dB=');
GdB=G1dB-LdB+G2dB;
disp('dB',GdB,+'The net dB gain is:');
