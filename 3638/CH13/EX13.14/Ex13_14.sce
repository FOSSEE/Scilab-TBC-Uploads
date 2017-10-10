//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.14
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
Pi=50e-6;//Source power in W
R=0.65;//Responsivity in A/W
T=300;//Missing data- Temperature in K
C=5e-12;//Photodiode capacitance in F
BER=1e-9;//Bit error rate
SNR=144;//Signal-to-noise ratio corresponding to BER of (10)^(-6)
kB=1.38e-23;//Boltzmann constant in SI Units

B=20e6;//Bit rate in b/s
Pmin=(B/R)*sqrt(2*%pi*kB*T*C*SNR);//Receiver sensitivity in W
//Let the value of Pmin in dBm be denoted by 'PmindBm'
PmindBm=10*log10(Pmin/1e-3);//Taking 10*log(Pmin) to convert into dBm where Pmin must be in mW
mprintf("\n For 20 Mb/s, Pmin=%.2e W = %.1f dBm",Pmin,PmindBm);//The answers vary due to round off error
//Let the value of Pi in dBm be denoted by 'PidBm'
PidBm=10*log10(Pi/1e-3);//Taking 10*log(Pi) to convert into dBm where Pi must be in mW
Pl=abs(PmindBm-PidBm);//The permissible loss between transmitter and receiver in dB
mprintf("\n The permissible loss between transmitter and receiver = %.1f dB",Pl);
//The answers vary due to round off error
