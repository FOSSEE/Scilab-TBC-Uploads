clear
//
//
//

//Variable declaration
c=3*10^8;   //velocity of matter wave(m/s)
l=2.945*10^-2;
lamda=5890*10^-10;    //wavelength(m)

//Calculation
n=l/lamda;       //number of oscillations
tow_c=l/c;       //coherence time(s)

//Result
printf("\n number of oscillations is %0.0f *10^4",n/10^4)
printf("\n coherence time is %0.2f *10^-11 s",tow_c*10^11)
