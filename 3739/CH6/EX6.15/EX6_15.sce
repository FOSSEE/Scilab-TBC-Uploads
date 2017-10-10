//Chapter 6, Example 6.15, page 265
clc
//Initialisation
t1=25                                 //terminal transmitter power 
t2=2                                  //terminal transmitter power 
gd=3                                  //correction factor of receiver antennas
lc=5                                  //coupler loss
prm=-105                              //receiver sensitivity
prb=-110                              //receiver sensitivity

//Calculation
ptb=10*log10(t1*10**3)
ptm=10*log10(t2*10**3)
p=ptb-ptm                              //Transmitting gain in downlink
ga=prm-prb                            //Receiving gain in uplink
tg=gd+ga+lc                            //total gain on the uplink 


//Results
printf("Transmitting gain in downlink = %.1f dBm",p)
printf("\nReceiving gain in uplink = %.1f dBm",ga)
printf("\ntotal gain on the uplink = %.1f dBm",tg)
