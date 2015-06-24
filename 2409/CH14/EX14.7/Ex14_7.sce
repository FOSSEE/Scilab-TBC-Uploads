
//Variable Declaration

T1=1.544  //Bit rate from sec.10.4(Mb/s)
R=62     //Bit rate from sec.10.4(dBMb/s)
EbN0R=12 //Required Eb/N0 ratio for uplink(dB)
LOSSES=212 //Transmission losses of uplink(dB)
GTR=10   //G/T ratio for earth station(dB/K)
G1=46   //Uplink antenna gain(dB)
Rd=74   //Downlink Transmission Rate(dBb/s)
//Calculation
CNR=EbN0R+R  //Carrier to noise ratio for uplink(dB)
EIRP=CNR-GTR+LOSSES-228.6 //EIRP of earth station antenna
P=EIRP-G1   //Transmitted Power Required(dBW)
P=10**(P/(10))   //Transmitted Power Required(Watts)

Ri=Rd-R   //Rate increase with TDMA operation(dB)
P1=1.4+Ri  //Uplink power increase required for TDMA operation(Watts)
P2=10**(P1/(10))

//Results
printf("Earth station transmission power required for transmission of T1 baseband signal is %.2f Watts",P)
printf("Uplink power increase required for TDMA operation is %f dBWatts or %.1f Watts",P1,P2)

