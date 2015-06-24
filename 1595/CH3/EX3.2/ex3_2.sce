// Amplitude Modulation-Reception : example 3-2 : (pg 134)
f=620*10^3;
IF=455*10^3;
LO=f+IF;
X=IF+LO;
// image frequency of local oscillator
//station frequency = 620 kHz
printf("\nLO - 620 kHz = IF");
printf("\nLO = %.f Hz",LO);
// determining at what other frequency, when mixed with 1075kHz,yields an o/p component at 455kHz
printf("\nX-1075kHz=IF \nX = %.f Hz",X);
