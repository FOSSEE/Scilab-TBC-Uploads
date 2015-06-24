//Variable declaration
C=0.1                      //capacitance(uF)
R1=10                      //resistance(k ohms)
R2=2.3                     //resistance(k ohms)
Vcc=12.                    //supply voltage(V) 
Rl=10**3.                  //resistance(k ohms)

//Calculations
//Part a
f=1/(0.693*C*(R2+R1/2))    //frequency(Hz)

//Part b
D=(1+(R2/R1))/(1+2*(R2/R1))*100          //duty cycle
 
//Part c
//(i)
T1=0.693*C*(R1+R2)                        //time period through R1(ms)
T2=0.693*R2*C                             //time period through R2(ms)
Pavg=(Vcc/Rl)**2*(T1/(T1+T2))             //average power dissipated during current sourcing(mW)

//Part d
Pavg1=(T2/(T1+T2))*(Vcc/Rl)**2           //average power dissipated during current sinking(mW)

//Results
printf (" %.2f kHz",f)
printf ("duty cycle is %.2f %%",D)
printf ("average power dissipated in current sourcing is %.3f mW",Pavg/1E-3)
printf ("average power dissipated in current sinking is %.3f mW",Pavg1/1e-3)
