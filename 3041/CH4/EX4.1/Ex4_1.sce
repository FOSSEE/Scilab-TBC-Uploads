

//Variable declaration
Vs = 1.               //source voltage(V)
C = 100*10^-6        //value of capacitance(uF)  
r1 = 1                //resistance 1(k ohms)
r2 = 4                //resistance 2(k ohms)
R = 5                 //total resistance,R = r1+r2

//Calculations
Imax = Vs/(r1+r2)*10^3        //maximum current(uA)
fc = 1/(2*(%pi)*C*R)        //critical frequency(Hz) 
                             //As w*C*R = 1 and w = 2*pi*f
f = 10*fc                      //lowest frequency(Hz)

//Results
printf ("maximum current %.1f uA",Imax)
printf ("critical frequency %.3f Hz",fc/1E+3)
printf ("lowest frequency %.2f Hz",f/1E+3)
