//Problem 14.04: For the periodic waveforms shown in Figure 14.5 determine for each: (i) frequency (ii) average value over half a cycle (iii) rms value (iv) form factor and (v) peak factor

//initializing the variables:
Ta = 0.02; // Time for 1 complete cycle in secs
Vamax = 200; // in volts
Va1 = 25; // in volts
Va2 = 75; // in volts
Va3 = 125; // in volts
Va4 = 175; // in volts
Tb = 0.016; // Time for 1 complete cycle in secs
Ibmax = 10; // in Amperes

//calculation:
//for Triangular waveform (Figure 14.5(a))
fa = 1/Ta
Aaw = Ta*Vamax/4
Vaavg = Aaw*2/Ta
Varms = (((Va1^2) + (Va2^2) + (Va3^2) + (Va4^2))/4)^0.5 //Note that the greater the number of intervals chosen, the greater the accuracy of the result
Ffa = Varms/Vaavg
Pfa = Vamax/Varms

//for Rectangular waveform (Figure 14.5(b))
fb = 1/Tb
Abw = Tb*Ibmax/2
Ibavg = Abw*2/Tb
Ibrms = 10
Ffb = Ibrms/Ibavg
Pfb = Ibmax/Ibrms

printf("\n\n Result \n\n") 
printf("\n (a1)Frequency f = %.0f Hz",fa)
printf("\n (a2)average value over half a cycle = %.0f V",Vaavg)
printf("\n (a3)rms value = %.1f V",Varms)
printf("\n (a4)Form factor = %.2f",Ffa)
printf("\n (a5)Peak factor = %.2f",Pfa)
printf("\n (b1)Frequency f = %.1f Hz",fb)
printf("\n (b2)average value over half a cycle = %.0f A",Ibavg)
printf("\n (b3)rms value = %.0f A",Ibrms)
printf("\n (b4)Form factor = %.0f",Ffb)
printf("\n (b5)Peak factor = %.0f",Pfb)