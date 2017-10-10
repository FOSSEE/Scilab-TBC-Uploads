clear//

//Variables

fo = 450.0 * 10**3                //Frequency(in Hertz)
//Let us assume 
C1=10.0*10**-6;C2=10.0*10**-6;C=10.0*10**-6;
C21 = 2 * C2                      //Capacitance (in Farad)  

//Calculation

fo1 = fo * (3.0/4.0)**0.5         //New Frequency (in Hertz)                 

//Result

printf("\n The oscillation frequency if C2 is doubled is  %0.1f  kHz.",fo1 * 10**-3)
