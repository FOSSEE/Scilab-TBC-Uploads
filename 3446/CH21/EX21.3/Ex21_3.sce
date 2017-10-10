//Exa 21.3
//To find-
// a) The bandwidth of a subchannel,
// b) modulation efﬁciency,
// c) user symbol rate,
// d) user data rate if the information bits are encoded with a rate of 3/4,
// e) time utilization efﬁciency of the system.

clc;
clear all;

InfoSc=48;//Information subcarriers
SyncSc=4;//synchronization subcarriers
ReservedSc=12;//Reserved subcarriers
Symrate=250;  //ksps(kilosymbols per second)
BW=20;  ///in MHz
Grdt=800; //Guard time in nsec

//solution
TotalSc=InfoSc+SyncSc+ReservedSc;//Total subcarriers
BW_Sch=BW*10^6/TotalSc;//BW of subchannel
Mod_eff=Symrate*10^3/(BW_Sch);//Modulation efficiency
User_txrate=InfoSc*Symrate*10^3;
User_bitsymbol=4;  //16-QPSK is used
disp("From table 21.7 For modulation scheme as 16-QAM and coding rate =3/4 then User data rate will be 36Mbps");
User_DR=36; //Mbps
Sym_Dur=1/(Symrate*10^3);
TimeUti=Sym_Dur/(Sym_Dur+(Grdt/10^9));

printf(' The bandwidth of subchannel is %.1f kHz\n',BW_Sch/10^3);
printf(' Modulation efficiency is %.1f symbols/sec/Hz \n',Mod_eff);
printf(' User symbol rate is %d Msps \n',User_txrate/10^6);
printf(' Time Utilization efficiency is %.2f \n',TimeUti);
