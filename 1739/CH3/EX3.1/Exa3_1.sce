//Exa 3.1 
clc;
clear;
close;
//Given data :
lambda=1.5;//im um
deltaTwg=0.5;//in ns
deltaTmat=2.8;//in ns
Tt=2.5;//in ns
//For single mode fibre, deltaTmod=0;//in ns
deltaTmod=0;//in ns
deltaTtotal=sqrt(deltaTmod^2+deltaTmat^2+deltaTwg^2);//in ns
Tr=sqrt(Tt^2+deltaTtotal^2);//in ns
B=1/(2*Tr*10^-9);//in bits/sec
disp(B*10^-6,"Maximum allowed bit rate for the fibre in Mbits/sec : ");
//Note : Answer in the book s not accurate.