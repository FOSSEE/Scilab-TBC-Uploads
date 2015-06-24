

//Variable declaration
Vdc=30                          //dc voltage(V)
V1=220                          //source voltage(V)
f=50                            //frequency(Hz)
Rl=1000                         //load resistance(k ohms)
Vr = 15

//Calculations
C=100/f*Rl                      //as Vdc/Vr=100
Vm=Vdc+0.01*(30/2)                   //peak voltage(V)
V2=Vm/(sqrt(2))            //secondary voltage(V)
r=V1/V2                         //transformer turn ratio

//Results
printf ("capacitor filtor is %.f uF",C)
printf ("transformer turn ratio is %.2f",r)
