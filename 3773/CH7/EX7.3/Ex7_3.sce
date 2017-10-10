//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-11.1
clc;

//Variable Initialization
c =%pi      //Circumference (m)
f1 = 1    //Frequency (MHz)
f2 = 10   //Frequency (MHz)
d = 10e-3   //Diameter of copper wire (m)

//Calculation
RL_Rr1 = 3430/((c**3)*(f1**3.5)*d)  
RL_Rr2 = 3430/((c**3)*(f2**3.5)*d)            //Ratio of Loss resistance and radiation resistance (unitless)
k1 = 1/(1+RL_Rr1)   //Radiation efficiency (unitless)
k_db1 = 10*log10(k1)    //Radiation efficiency (in dB)
k2 = 1/(1+RL_Rr2)   //Radiation efficiency (unitless)
k_db2 = 10*log10(k2)    //Radiation efficiency (in dB)

//Result
mprintf("The radiation efficiency for 1 MHz is %.1ef or %.1f dB",k1, k_db1)
mprintf("\nThe radiation efficiency for 10 MHz is %.2f or %.1f dB",k2, k_db2)
