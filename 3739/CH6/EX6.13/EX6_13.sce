//Chapter 6, Example 6.13, page 265
clc
//Initialisation
sr=-106                                         //Receiver sensitivity
f=8                                             //Fade margin
cl=6                                            //Coupler loss
dl=1                                            //Duplexer Loss
bf=6.5                                          //BTS feeder loss
ba=12                                           //BTS antenna gain
pl=138                                          //Path loss
pg=15                                          //Pathlength in km
ta=2                                           //Terminal antenna gain
tf=0.5                                          //Terminal feeder loss

//Calculation
prm=sr+f                                         //minimum received power
ptb=prm+cl+dl+bf-ba+pl-ta+tf                    //BTS transmitter power in dbBm
pw=10**((ptb-30)/10)

//Results
printf("BTS transmitter power = %.2f dBm",ptb)
printf("\n                      = %d W",pw)
