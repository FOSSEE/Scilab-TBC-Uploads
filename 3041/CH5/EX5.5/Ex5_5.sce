

//Variable declaration
Vcc=10                  //supply voltage(V)  
Vce=10
Icq=140*10**-3              //Ic at Q point(A)
Rl=8                        //load resistance(ohms)
vce=16                      //instantaneous collector to emitter voltage(V)
ic=235*10**-3               //instantaneous collector current(A)

//Calculations
RL=Vcc/Icq
r=sqrt(RL/Rl)                             //load resistance for max ac swing(ohms)
Po=(vce*ic)/(2*sqrt(2)*2*sqrt(2))    //output power(W)
Pi=Vcc*Icq                                     //input power(W)   
eta=Po/Pi                                      //efficiency
Pd=Pi-Po                                       //dissipated power(W)  

//Results
printf ("a)transformation ratio is %.f",r)
printf ("c)power output is %.2f W",Po)
printf ("efficiency is %.2f %%",eta*100)
