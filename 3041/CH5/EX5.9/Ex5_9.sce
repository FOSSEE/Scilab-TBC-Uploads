

//Variable declaration
Vcc=30.                          //supply voltage(V)
Im=1                             //peak value of current(A)
Rl=10.                           //load resistance(ohms)

//Calculations
//Part a
Pi=(Vcc*Im)/%pi             //input power(W)
Pimax=(Vcc**2)/(%pi*2*Rl)   //max input power(W)

//Part b
Po=((Im**2)*Rl)/2               //output power(W)
Pomax=(Vcc**2)/(8*Rl)           //output power max(W)

//Part c
eta=Po/Pi                     //efficiency
etamax=Pomax/Pimax            //efficiency max                

//Part d
Pd=Pi-Po                             //Power dissipated by transistors(W)                            
Pmax=(Vcc**2)/(2*(%pi)**2*Rl)    //max power dissipated by transistors
                              
//Results
printf ("a)input power is %.2f W and max input power is %.2f W",Pi,Pimax)
printf ("b)output power is %.1f W and max output power is %.2f W",Po,Pomax)
printf ("c)power efficiency for the load is %.2f %% and its max value is %.2f %%",eta/1E-2,etamax/1E-2)
printf ("power dissipated and its max value are %.2f W and %.2f W",Pd,Pmax)
