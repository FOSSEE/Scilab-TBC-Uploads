
//Variable declaration
Vcc=30                        //supply voltage(V)
Rl=16                         //load resistance(ohms)    
n=2                           //transformation ratio
Im=1                          //peak value of current(A)
etamax=78.54                  //max efficiency(%)

//Calculations
//Part a
Rl1=Rl*(n/2)**2                  //load resistance(ohms)
Pi=(2*Vcc*Im)/%pi            //input power(W)
Pimax=(2*Vcc**2)/((%pi)*Rl1) //input power max(W)

//Part b
Po=((Im**2)*Rl1)/2               //output power(W)
Pomax=(Vcc**2)/(2*Rl1)           //output power max(W)

//Part c
eta=Po/Pi                        //efficiency
                

//Part d
P=((2*Vcc*Im)/%pi)-((Im**2*Rl1)/2) //Power dissipated by transistors(W)
Pd=P/2                                 //power dissipated by each transistors
Pmax=(2*Vcc**2)/((%pi)**2*Rl1)     //max power dissipated by transistors
Pdmax=Pmax/2                           //max power dissipated by each transistor

//Results
printf ("a)input power is %.1f W and  max input power is %.2f W",Pi,Pimax)
printf ("b)output power %.1f W and max output power is %.2f W",Po,Pomax)
printf ("c)power efficiency for the load is %.2f %% and its max value is %.2f %%",eta/1E-2,etamax)
printf ("power dissipated by each transiator is %.1f W and  max value is %.1f W",Pd,Pdmax)
