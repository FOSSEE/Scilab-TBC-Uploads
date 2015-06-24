
//Variable Declaration

BIF=36   //Bandwidth of channel over which carriers are spread(MHz)
R=0.4  //Rolloff factor for filtering
Rb=64   //Information bit rate(kb/s)
BER=10**-5  //Bit error rate required
EbN0R=9.6 //Eb/N0 ratio for BER given from Fig.10.18

//Calculation

Rch=BIF*10**6/(1+R) //Rate of unspreaded signal(chips/s)
Gp=Rch/(Rb*10**3)     //Processing gain
Gp1=round(10*log10(Gp))  //Processing gain(dB)
EbN0R1=10**(EbN0R/(10))  //Converting Eb/N0 into ratio
K=1+(1.4*Gp/EbN0R1)  //Number of channels
K=floor(K)

//Result
printf("The Processing Gain is %.f dB",Gp1)
printf("An estimate of maximum number of channels that can access the system is %.f",K)
