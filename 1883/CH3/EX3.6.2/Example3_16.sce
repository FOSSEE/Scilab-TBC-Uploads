//Chapter-3,Example3_6_2,pg 3-18

L=3                                                            //length of fibre in km
 
a=1.5                                                          //Loss specification in dB/km

Pin=9.0                                                        //input power in uW

Pl=a*L                                                         //Power loss 

Pout=Pin*10^(-Pl/10)                                           //as Power loss or attenuation is   Pl=(-10)*log10(Pout/Pin)

printf("\nThe output power Pout = %.3f uW\n",Pout)
