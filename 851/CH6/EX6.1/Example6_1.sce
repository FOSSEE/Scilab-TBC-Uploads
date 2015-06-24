//clear//
//Caption:Bandwidth Requirements of the T1 carrier
//Example6.1:Bandwidth Requirements of the T1 Carrier
//Page 251
clear;
clc;
Tb = input('Enter the bit duration of the TDM signal:')
Bo = 1/(2*Tb);//minimum transmission bandwidth of T1 system
//Transmission bandwidth for raised cosine spectrum 'B'
alpha = 1;//cosine roll-off factor
f1 = Bo*(1-alpha);
B = 2*Bo-f1;
disp(B,'Transmission bandwidth for raised cosine spectrum in Hz:')
//Result
//Enter the bit duration of the TDM signal:0.647*10^-6
//Transmission bandwidth for raised cosine spectrum in Hz:1545595.1  
