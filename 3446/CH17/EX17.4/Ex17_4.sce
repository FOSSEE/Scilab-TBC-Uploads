// Exa 17.4
//To calculate the cell radius.

clc;
clear all;

Pt=36;//Base station transmitted power in dBm
Pms=24;//mobile station transmitted power in dBm
Nms=8;//mobile station noise figure in dB
Nbs=5;//Base station nise figure in dB
Ga=18;//Base station transmit and receive antenna gain in dBi
Gm=0;//Mobile antenna gain in dBi
SNR=12;// in dB
Lc_TX=5;//BS transmit antenna cable, connector, and ﬁlter losses in dB
Lc_RX=2;//BS receiver antenna cable, connector, and ﬁlter losses in dB
Bodyloss=3;// Body losses at mobile
fading=10.2;// in dB
ThermalNoise=-174;// in dBm/Hz
Gdiversity=5;//Antenna diversity gain at BS in dB
//Assuming standard value of RF channel as 
RFch=200*10^3;  //in Hz

//solution
N=ThermalNoise+10*log10(RFch)+Nms;
Smin=N+SNR;
Smean=Smin+fading+Bodyloss;
Lp=Pt-Lc_TX+Ga-Smean;
N1=ThermalNoise+10*log10(RFch)+Nbs;
Smin=N1+SNR-Gdiversity;
Smean1=Smin+fading+Bodyloss;
Lp1=Pms-Smean1+Ga-Lc_RX;
disp("Using uplink path loss and Hata model to calculate cell radius");
R=10^((Lp1-133.2)/33.8);
printf(' Cell radius is %.1f km \n',R);
