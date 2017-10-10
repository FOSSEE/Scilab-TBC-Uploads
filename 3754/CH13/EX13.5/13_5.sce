clear//

//Variables

C1min=5;C2min=5;Cmin=5;
C1max=50;C2max=50;Cmax=50;
L = 10                                          //Inductance (in milli-Henry)
 
//Calculation

CTmin = C1min * C2min / (C1min + C2min)         //Total minimum capacitance (in pico-farad)
CTmin = CTmin * 10**-12                         //Total minimum capacitance (in farad)
L = 10 * 10**-3                                 //Inductance (in Henry)
f0max = 1/(2*%pi*(L*CTmin)**0.5)            //Maximun resonant frequency (in Hertz)
CTmax = C1max * C2max / (C1max + C2max)         //Total maximum capacitance (in pico-farad)
CTmax = CTmax * 10**-12                         //Total minimum capacitance (in farad)
f0min = 1/(2*%pi*(L*CTmax)**0.5)            //Minimum resonant frequency (in Hertz)

//Result

printf("\n Tuning range for the circuit is between  %0.0f  kHz and  %0.0f  MHz.",f0min*10**-3,f0max*10**-6)
