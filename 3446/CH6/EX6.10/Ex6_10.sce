// Exa 6.10
// To calculate the data link protocol efﬁciency with 
//(1) Stop and Wait protocol — full duplex,
//(2) SRP with window size W=8, and 
//(3) Go-Back-N protocol with window size W=8.

clc;
clear all;

Tprop=4;  //maximum propogation delay in sec
R=10; // data rate in Mbps
PackLen=400; //data packet length in bits
ACK=20;  //length of ACK packet in bits
Tproc=1; //processing time(sec)
p=0.01;//probability that a data packet or its ACK can be corrupted during transmission

//solution
Tp=PackLen/R; //packet transmission time in microsec
Ta=ACK/R; // transmission time for an ACK in microsec
T=Tp+2*Tprop+2*Tproc+Ta;// total time for transmission time 
// Stop and wait ARQ
Eff0=(1-p)*Tp/((1-p)*T+p*Tp);
//SRP with window size W=8
W=8;
Eff1=(2+p*(W-1))/(2+p*(3*W-1));
//Go-Back-N protocol with window size W=8
Eff2=1/(1+W*(p/(1-p)));
printf('The data link protocol efficiency with Stop and Wait protocol, SRP and GBN are \n %.3f, %.3f abd %.3f respectively\n',Eff0,Eff1,Eff2);
