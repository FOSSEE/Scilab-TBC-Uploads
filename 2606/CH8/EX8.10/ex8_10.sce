//Page Number: 8.12
//Example 8.10
clc;


//Given
K=1.38D-23;
B=40D+6;

Tant=600; //Kelvin
Trec=3000; //Kelvin

G=80; //dB
GG=(10^(G/10));

//Input noise power from antenna
Nant=K*Tant*B; //W
disp('W',Nant,'Nant=');

Nrec=K*Trec*B; //W
disp('W',Nrec,'Nant=');

Nout=(Nant+Nrec)*GG;
disp('W',Nout,'Reciver Noise Power Output');

