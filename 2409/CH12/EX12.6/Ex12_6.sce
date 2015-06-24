//Variable Declaration

TRn=12   //Receiver Noise figure(dB)
G=40     //Gain of LNA(dB)
T0=120  //Noise temperature(Kelvin)

//Calculation

F=10**(TRn/(10))   //Converting noise power to ratio
Te=(F-1)*290     //Noise Temperature of the amplifier
G=10**(G/10)     //Converting Gain of LNA to ratio
Tn=T0+Te/G       //Overall Noise Temperature(Kelvin)


//Result
printf("The overall noise temperature is %.2f Kelvin", Tn)
