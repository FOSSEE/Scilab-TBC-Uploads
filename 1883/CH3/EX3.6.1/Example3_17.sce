//Chapter-3,Example3_6_1,pg 3-17

Pin=1                                                        //Input power in mW

Pout=0.3                                                     //output power in mW

Pl=(-10)*log10(Pout/Pin)                                     //Power loss or attenuation

L=0.1                                                        //Length of cable in km

a=Pl/L                                                       //fibre attenuation

printf("\nThe fibre attenuation is a = %.2f dB/km\n",a)
