//Page Number: 8.14
//Example 8.13
clc;
//Given
Pni=-100; //dBm
PniW=((1D-3)*(10^(Pni/10)));

To=290; //K

F=1.6; //dB
NF=(10^(F/10));

//(a) Noise tempertaure of antenna
//As Te=Pni/K*B;
K=1.38D-23;
B=20D+6;
Te=(PniW/(K*B));
disp('K',Te,'Noise tempertaure of antenna');

//(b)Effective noise tempertaure
//Given,
G=30; //dB
GdB=(10^(G/10));

Tef=((NF-1)*To);
disp('K',Tef,'Effective Noise tempertaure');

//Output Noise Pno=K*T(Te+Tef)*B*GdB

Pno=K*(Te+Tef)*B*GdB; //W
Pno1=(10*(log10(Pno/1D-3)));
disp('dBm',Pno1,'Output Noise: ');

