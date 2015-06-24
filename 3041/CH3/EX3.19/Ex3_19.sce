

//Variable declaration
Re=0.56                          //emitter resistance(k ohms)
beta=1600                        //current gain
R1=110                           //resistance(k ohms)
R2=330                           //resistance(k ohms)

//Calculations
//Part a
Av1=Re*(beta+1)               //voltage gain

//part b
Rb=(R1*R2)/(R1+R2)             //base resistance(k ohms)
Vs=(1.56/(Re*(beta+1)))+1       //source voltage(V) 
Avs=1/Vs

//part c
R=1+(1+beta)*Re                                    //resistance presented to Ib
I=Rb/(Rb+R)                                        //I=Ib/Ii 
Ai=(1+beta)*I                                      //current gain

//part d
Rl=10*10**3                             //load resistance(ohm)
Re1=(Re*Rl)/(Re+Rl)                     //emitter resistance(k ohms)
R1=1+(1+beta)*Re1                       //resistance presented to Ib(k ohms)
I1=Rb/(Rb+R1)                           //I1=Ib/Ii
Ai1=(beta+1)*I1                         //current gain
Av2=Re1*(1+beta)                        //voltage gain

//Results
printf ("a)voltage gain is %.2f",Av1)
printf ("b)Avs is %.2f",Avs)
printf ("c)Ai is %.2f ",Ai)
printf ("when output Vo1 feeds a load of 10 k ohms Ai is %d and Av2 is %.f",Ai1,Av2)
