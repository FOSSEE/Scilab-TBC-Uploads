clear//

//Variables

f = 50.0 * 10**3               //Frequency (in Hertz)
duty_cycle = 0.6               //Duty cycle
C = 0.0022 * 10**-6            //Capacitance (in Farad)             

//Calculation

T = 1/f                        //Time period (in seconds)
t1 = duty_cycle * T            //time interval1 (in seconds)
t2 = T - t1                    //time interval2 (in seconds)
R2 = t2 / (0.7 * C )           //Resistance (in ohm)  
R1 = t1 / (0.7 * C) - R2       //Resistance (in ohm) 

//Result

printf("\n Time period is  %0.3f ms.\nt1 is  %0.3f  ms.\nt2 is  %0.3f  ms.\nR2 is  %0.2f  kilo-ohm.\nR1 is  %0.1f  kilo-ohm.",T*10**3,t1*10**3,t2*10**3,R2*10**-3,R1*10**-3)
