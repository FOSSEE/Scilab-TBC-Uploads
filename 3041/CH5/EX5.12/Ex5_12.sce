

//Variable declaration
Vcc=15.                            //supply voltage(V)
Rl=10.                             //load resistance(ohms)

//Calculations
//Part a
Immax=Vcc/Rl                      //max peak current(A)
Irmsmax=Immax/(sqrt(2))      //max rms current(A)
Pomax=Irmsmax**2*Rl               //max output power(W)
Pi=(2*Vcc*Immax)/%pi          //max input power(W)
eta=Pomax/Pi                      //efficiency

//Part b 
Im=(2*Vcc)/(%pi*Rl)                       //peak current(A)
Pdmax=((2*Vcc*Im)/(%pi))-((Im**2*Rl)/2)   //max power dissipated(W)
eta1=((Im**2)*Rl*%pi)/(2*2*Vcc*Im)        //efficiency

//Results
printf ("a)max signal output power,collector dissipation  are %.2f W , %.2f W and efficiency is %.2f %%",Pomax,Pi,eta/1E-2)
printf ("b)max dissipation of each transistor and corresponding efficiency is %.2f W and %.1f resp.",Pdmax,eta1)
