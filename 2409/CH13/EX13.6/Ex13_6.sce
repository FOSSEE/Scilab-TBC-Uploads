
//Variable Decalration
LU=200   //Uplink propogation loss(dB)
LD=196   //Downlink propogation loss(dB)
GE=25    //Receiving gain of earth station(dB)
GE1=25   //Transmit gain of E1 in the direction of S(dB)
GS=9     //receive gain of S in the direction of E1(dB)
GS1=9   //Transmit gain of satellite S1 in the direction of E(dB)
GTE=48  //Transmit gain of E(dB)
GRE=48  //Receive gain of E(dB)
GRS=19  //Receive gain of S(dB)
GTS=19  //Transmit gain of S(dB)
US=-60    //Maximum power spectral density(dBJ)
US1=1   //Maximum power spectral density(uJ)
UE1=10  //Maximum power spectral density transmitted by earth station(uJ)
UE=-50  //Maximum power spectral density transmitted by earth station(dBJ)
k=-228.6

//Calculation
URS=UE+GTE+GRS-LU//Received power spectral density at satellite S(dB)
URE=US+GTS+GRE-LD//Received power spectral density at satellite E(dB)
y=URE-URS    //Transmission gain for network R(dB)

I1=US+GS1+GE-LD  //Interference received by earth station(dB)
I2=UE+GE1+GS-LU  //Uplink Interference(dB)

delTE=I1-k   //Earth station receiver input(dBK)
delTE=10**(delTE/10)   //Earth station receiver input(K)
delTS=I2-k   //Noise temperature at satellite receiver input(dBK)

delTSE=y+delTS  //Noise Temperature rise(dBKelvin)
delTSE=10**(delTSE/10)  //Noise Temperature rise(Kelvin)
delT=delTSE+delTE  //Equivalent noise temperature rise


disp(URE)
disp(URS)

//Results
printf("The transmission gain is %.f dB",y)
printf("The interference levels I1 an I2 are %.f %.f dBJ respectively",I1,I2)
printf("The equivalent temperature rise overall is %.2f Kelvin",delT)
