//Exa 17.10
//To calculate No of users that can be supported on the downlink of the WCDMA network.

clc;
clear all;

Rc=3.84;//chip rate in Mcps
N=3;//Noise rise in dB
OF=0.8;//orthogonality factor
B=0.55;//Interference from other cells 
Eb_N0=4;//in dB
Sec_Eff=0.85;//Sector efficiency
Pwr_Eff=0.80;//Power control efficiency
Y=1.2; //Retransmit rate
X=10; //10MB at 384Kbps
X1=2;  //2MB at 144Kbps
X2=1;  //1MB at 64Kbps

//solution
//Assuming Voice activity=Vf=1
Vf=1;
AvgDR=Y*X*10^6*(1/3600)+Y*X1*10^6*(1/3600)+Y*X2*10^6*(1/3600);
CLoad=(N-1)/(N+1);
DLcap=(Rc*10^6*Pwr_Eff*Sec_Eff)/(((10^(Eb_N0/10))*(B+OF)*Vf));
Allowcap=CLoad*DLcap;
users=Allowcap/AvgDR;
printf('NO of users that can be supported on the downlink of the WCDMA network are %d \n ',round(users));
