// Exa 17.5
// To calculate uplink cell load factor, number of voice users and poll capacity of the cell.

clc;
clear all;

Ri=12.2*10^3;//Information rate in bps
Rc=3.84*10^6;//Chip rate in cps(chips per second)
Eb_Nt=4;  //in dB
Imargin=2;  //Interference margin(3 dB)
B=0.5;//Interference factor due to other cells
Vi=0.65;//Channel activity factor

//solution
Eb_Ntreqd=10^(Eb_Nt/10);
LF_peruser=(1+B)*(1/(1+(Rc/Ri)*(1/Eb_Ntreqd)*(1/Vi)));  //M(no of users=1) in Eq 17.13
printf("Cell load factor per voice user is %.5f \n ',LF_peruser);
CellLoading=(Imargin-1)/Imargin;
VoiceUsers=CellLoading/LF_peruser;
printf('No of Voice Users are %d per cell \n ',VoiceUsers);
//From EQ 17.6 assuming Power control efficiency=1
Polecap=Rc/(Ri*Vi*(1+B)*Eb_Ntreqd);
printf('Pole Capacity is %d \n',Polecap);
