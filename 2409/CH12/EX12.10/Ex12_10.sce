
//Variable Declaration
f=14        //Frequency(GHz)
Ps=-120     //Flux density required to saturate the transponder(dBW/m2)
LOSSES=2    //Propogation Losses(dB)
FSL=207     //Free-space loss(dB)

//Calculation

A0=-21.45-20*log10(f)   //Effective antenna aperture(dB)
EIRP=Ps+A0+LOSSES+FSL //Equivalent isotropically radiated power(dB)

//Result
printf("The earth station EIRP required for saturation is %.2f dBW",EIRP)
