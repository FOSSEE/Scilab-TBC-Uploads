
//Variable Declaration

Ps=-91.4      //saturation flux density(dBW/m2)
f=14          //uplink frequency(GHz)
GTR=-6.7      //G/T (dB/k)
BO=11        //Input Back off(dB)
k=-228.6       //Value of k(dB)
RFL=0.6      //receiver feeder loss

//Calculation

A0=-21.5-20*log10(f)   //Effective antenna aperture(dB)
CNR=Ps+A0-BO+GTR-k-RFL    //carrier to noise ratio(dB)

//Result
disp(A0)
printf("The carrier to noise ratio is %.1f dB",CNR)
