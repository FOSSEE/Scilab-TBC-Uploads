clear
//Given
Rab=500.0                      //ohm
Rl=500                        //ohm
Rbc=1500                      //ohm
E=50                          //Volts
Rac=2000.0                      //ohm
V=40

//Calculation
R=Rbc*Rl/(Rbc+Rl)
I=E/(Rab+R)
Pd=I*Rab
Rl1=E-Pd
I1=E/Rac
R12=V/I1

//Result
printf("\n (i) Potential difference across the road is  %0.2f  V",Rl1)
printf("\n (ii) Resistance at BC is  %0.3f  ohm", R12)
