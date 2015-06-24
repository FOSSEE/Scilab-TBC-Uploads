//Chapter-3,Example3_6_4,pg 3-19

Pin=8.6                                                      //Input power in mW

Pout=7.5                                                     //output power in mW

Pl=(-10)*log10(Pout/Pin)                                     //Power loss or attenuation

L=0.5                                                        //Length of cable in km

a=Pl/L                                                       //Loss secification

printf("\nThe loss specification in cable is  a = %.3f dB/km\n",a)
