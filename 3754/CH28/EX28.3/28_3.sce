clear//

//Variables

fo = 1.0 * 10**6           //Resonant frequency (in Hertz)
Qo = 100.0                 //Quality factor

//Calculation

BW = fo / Qo               //Bandwidth (in Hertz)

//Result

printf("\n Bandwidth of the circuit is  %0.3f  kHz.",BW * 10**-3)
