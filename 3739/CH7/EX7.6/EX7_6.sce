//Chapter 7, Example 7.6, page 309
clc
//Initialisation
pt=500                                        //Transmitter power in mW
gt=42                                         //transmitter antenna gain in dB
gr=44                                         //receiver antenna gain in dB
lbt=2.6                                       //transmitter branching loss in dB
lbr=3                                         //receiver branching loss in dB
flt=45                                        //transmitter feeder length
flr=35                                       //receiver feeder length
fls=6.5                                       //feeder loss
prx=-72                                       //Receiver sensitivity
d=30                                          //path distance in km
f=8.4                                         //frequency in ghz

//Calculation
ptx=10*log10(pt)                         //transmitter threshold level
lft1=flt*fls/100
lfr=flr*fls/100
eirp=ptx+gt-lbt-lft1                            //Transmitter effective power
sg=ptx-prx
fsl=92.4+20*log10(f)+20*log10(d)
rsl=ptx+gt+gr-fsl-lft1-lfr-lbt-lbr
fm=rsl-prx

//Results
printf("EIRP = %.2f dBm",eirp)
printf("\nSG = %.2f dBm",sg)
printf("\nFSL = %.2f dB",fsl)
printf("\nRSL = %.2f dBm",rsl)
printf("\nFM = %.2f dB",fm)
