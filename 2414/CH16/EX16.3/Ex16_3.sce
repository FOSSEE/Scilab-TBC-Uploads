clc;
close();
clear();
//page no 521
//prob no. 16.3
d=240000*1.609;  //in km
//part a
f=100;   //frequency in MHz
alfa1_dB=20*log10(f)+20*log10(d)+32.44;  //dB
mprintf('(a) The path loss is %.2f dB\n',alfa1_dB);
//part b
f=1;   //frequency in GHz
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf(' (b) The path loss is %.2f dB\n',alfa1_dB);
//part c
f=10;   //frequency in GHz
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf(' (c) The path loss is %.2f dB\n',alfa1_dB);
