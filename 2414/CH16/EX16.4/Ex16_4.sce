clc;
close();
clear();
//page no 522
//prob no. 16.4
f=1;  //in GHz
//part a
d=1;   //in Km
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf('(a) The path loss is %.2f dB\n',alfa1_dB);
//part b
d=10;   //in km
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf(' (b) The path loss is %.2f dB\n',alfa1_dB);
//part c
d=100;   //in km
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf(' (c) The path loss is %.2f dB\n',alfa1_dB);
