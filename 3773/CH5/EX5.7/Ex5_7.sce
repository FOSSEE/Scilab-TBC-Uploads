//Chapter 5: Point Source and Their Arrays
//Example 5-21.1
clc;

//Variable Initialization
a = 25              //Height of vertical conducting wall (m)
r = 100             //Distance to the receiver (m)
wave_lt = 10e-2     //Transmitter dimension (m)

//Calculation
k = sqrt(2/(r*wave_lt))    //Constant (unitless)
S_av = (r*wave_lt)/(4*(%pi**2)*(a**2))  //Relative signal level (unitless)
S_av_db = 10*log10(S_av)   //Signal level (in db)

//Result
mprintf("The signal level at the receiver is %.5f or %.0f dB",S_av,S_av_db)
