//Chapter 6, Example 6.14, page 265
clc
//Initialisation
pm=2                                    //transmitter power
ld=1                                    //Duplexer losses
lp=138                                  //Path loss
lfm=0.5                                 //terminal feeder losses
lfb=6.5                                 //transmitter feeder losses
gt=12                                   //BTS transmitter antenna gain
gr=2                                    //BTS receiver antenna gain
i=3
bs=-110                                 //BTS receiver sensitivity

//Calculation
ptm=10*log10(pm*10**3)
prb=ptm-ld-lp-lfm-lfb+gt+gr
pr=prb+i                                //BTS received power
fm=pr-bs                                //fade margin

//Results
printf("BTS received power = %.1f dBm",pr)
printf("\nFade margin = %.1f dB",fm)
