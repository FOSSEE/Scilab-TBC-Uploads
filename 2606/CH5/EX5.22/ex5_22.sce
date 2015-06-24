//Page Number: 5.35
//Example 5.22
clc;
//Given,
f1=200; //Hz
f2=3300; //Hz
fs=8000; //Samples/s
SQN=30; //dB

//(a)Minimum number of quantizin levels and bits per sample
//From SQN=1.76+20log L
La=10^((SQN-1.76)/20);
L=round(La);
disp(L,'Minimum number of quantizing levels');
n=log2(L);
nn=round(n);
disp(nn,'Minimum number of bits per sample');

//(b)Minimum system bandwidth
Fpcm=(nn*fs)/2;
disp('Hz',Fpcm,'Minimum system Bandwidth');

//(c)For u=255
//SQN=20logL-10.1
La1=10^((SQN+10.1)/20);
L1=(round(La1))+1; //Upper Limit
disp(L1,'Minimum number of quantizing levels for u=255');
n1=log2(L1);
nn1=(round(n1));
disp(nn1,'Minimum number of bits per sample');

//Minimum system bandwidth
Fpcm1=(nn1*fs)/2;
disp('Hz',Fpcm1,'Minimum system Bandwidth');

