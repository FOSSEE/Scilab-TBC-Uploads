

//Variable declaration
Pmax=10                         //power maximum(W)
Ic=1                            //collector current(A)
Vcemax=100                      //max collector to emitter current(V)
Vcemin=2                        //min collector to emitter current(V)

//Calculations
//Part a
Vceq=46                       //Vce at Q point             
Icq=0.21                      //Ic  at Q point             
Vcc=92                        //supply voltage(V)
ic=0.42                       //collector current(A) 

//Part b
Rl=Vceq/Icq                       //load resistance(ohms)

//Part c
Pi=Vcc*Icq                        //input power(W)
Po=((ic/(2*sqrt(2)))**2)*Rl  //output power(W)
eta=(Po/Pi)*100                   //efficiency

//Results
printf ("Rl for maximum power input is %.f ohms",Rl)
printf ("input power is is %.1f W",Pi)
printf ("Po is %.1f",Po)
printf ("eta is %.1f %%",eta)
