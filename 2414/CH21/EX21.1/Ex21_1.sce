clc;
close();
clear();
//page no 637
//prob no. 21.1
D1=5;
GR1=3*D1^2*(1+D1);
mprintf('The reciever processing gain is GR1= %.0f \n',GR1);
Bt=200*10^3;     //bandwisth in Hz
W=53*10^3;        //highest modulating frequency in Hz
D2=Bt/(2*W)-1;    //deviation ratio
mprintf('D2=%.3f\n',D2);
GR2=3*D2^2*(1+D2);
mprintf('The reciever processing gain for sterio FM is GR2= %.3f \n',GR2);
mprintf('The ratio of the two gains is GR2/GR1= %.4f  dB\n',GR2/GR1);
dBdiffrence=10*log10(GR2/GR1)
mprintf('dB diffrence= %.0f dB\n',dBdiffrence);
