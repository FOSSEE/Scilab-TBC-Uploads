//Variable declaration
Rs=500           //collector current(k ohms) 
Io=-1*10**-3     //output current(mA) 
Rc=5*10**3.       //collector resistance(ohms)
hie=2*10**3
hoe=10*10**-6.    
hfe=100.
hre=5*10**-4
Rb=50*10**3.     //base resistance(ohms)

//Calculations                      
Io1=-1/(1+Rc*hoe)*hfe   //as Io=-1/(1+Rc*hoe)*hfe*Ib 
Ib=-1/Io1               //base current(uA)
Vo=Io*Rc                //output voltage(V)
Vi=hie*Ib+Vo*hre        //input voltage(V)
Is=Ib+Vi/Rb             //source current(ohms)
Ai=Io/Is                //current gain
Vs=(Is*Rs)+Vi           //source voltage(V)
Av=Vo/Vs                //voltage gain

//Results
printf ("source to load voltage gain is %.f",Av/1E-3)
printf ("source to load current gain is %.f",Ai/1E-3)
