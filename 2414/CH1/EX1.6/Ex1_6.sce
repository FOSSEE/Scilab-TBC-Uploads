clc;
//page 10
//ex-1.6

G=0.28; //Absolute gain
Gdb=10*log10(G);
disp('dB',Gdb,+'Decibell gain is');
P1=1;  
P2=.28;  //28 % of input power
Ldb=10*log10(P1/P2); //dB loss
disp('dB',Ldb,+'Decibell loss is:');
