//Variable declaration
Re=1.25*10**3              //emitter resistance(ohms)
Rc=4.8*10**3                //collector resistance(ohms)
Rb=800*10**3               //base resistance(ohms)     
rpi=900                    //dynamic resistance(ohms)
Vcc=16                     //supply voltage(V)
beta=100.                  //current gain 

//Calculations
A=-(beta/rpi)             //amplifier voltage gain  
B=-Re                     
V=(A*Rc)/(1+B*A)          //V=Vo/Vs
   
//Results
printf ("Amplifier voltage gain is %.1f",V)
