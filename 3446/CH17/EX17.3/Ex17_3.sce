// Exa 17.3
//Using trafﬁc data per cell for a GSM/GPRS network from Example 17.2
// To calculate-
// (a) data Erlangs,
// (b) time slot utilization, and
// (c) TS capacity.

clc;
clear all;

Holdtime=120;//Average holding time during Busy Hours(in sec)
Tx=3;// No of transreceivers
TSsig=3;//No of TSs per cell for signaling
RLC=0.80;//Radio link control efficiency
Radioblocks=9000;//Total numbers of transmitted radio blocks
TSdata=3;//TSs allocated for data trafﬁc per cell
Datarate=15.5; //From eg 17.2
Voicetraffic=8.82;  //From eg.17.2
Duration=0.02;//Duration of block in sec

//solution
DataEr=Radioblocks*Duration/Holdtime;
printf('Data Erlangs = %.1f \n ',DataEr);
TSuti=DataEr/TSsig;
printf('Time Slot(TS) utilization = %.1f \n ',TSuti);
Throughput=(Datarate/TSdata)*RLC;
TScap=Throughput/TSuti;
printf("TS capacity is %.2f kbps \n ',TScap);
