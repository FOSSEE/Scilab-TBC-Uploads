//Variable declaration
beeta=100            //current gain
Ic=2.5               //collector current(mA)
Io=-0.5              //output current(mA) 
Rl=2.5               //load resistance(kohm)

//Calculations
rpi=beeta*(25/Ic)   //dynamic resistance(ohms)
Ib=Io/(-beeta)      //as Io=-beeta*Ib
Vs=rpi*Ib           //signal voltage(V)
Vo=Rl*Io            //output voltage(V)
Av=Vo/Vs            //voltage gain
Ai=Io/Ib            //current gain

//Results
printf ("signal voltage is %.1f mV",Vs)
printf ("current gain is %.1f",Ai)
printf ("voltage gain is %.f",Av/1E-3)
