clc;
close();
//page no 208
//prob no. 6.15
P=1000;  //in watts
R=50;  //in ohm
Vrms=sqrt(R*P);  //in V
Irms=sqrt(P/R);  //in A
disp('V',Vrms,'The unmodulated rms carrier voltage is ');
disp('A',Irms,'The unmodulated rms carrier current is ');
