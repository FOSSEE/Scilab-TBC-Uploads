
//Variable Declaration

Tant=35     //Antenna noise temperature(kelvin)
Te1=150     //Receiver noise temperature(kelvin)
L=5         //Cable Loss (dB)
T0=290    
G1=10**5    //LNA Gain
F=12        //Receiver Noise figure(dB)

//Calculation

L=10**(L/10)  //Converting L into ratio
F=10**(F/10)  //Converting F into ratio
Ts=Tant+(L-1)*T0+L*Te1+L*(F-1)*T0/G1  //Noise Temperature referred to the input(Kelvin)


//Result
printf("The noise temperature referred to the input is %.0f Kelvin",Ts)

