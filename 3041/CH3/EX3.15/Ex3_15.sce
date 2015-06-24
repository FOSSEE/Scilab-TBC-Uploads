//Variable declaration
Vcc=6                      //supply voltage(V)
R=1.2                      //resistance(k ohms)
Vbe=0.7                    //base to emitter voltage(V) 
beeta=100.                 //current gain

//Calculations
//Part a
Ir=(Vcc-Vbe)/R             //current(mA)
I=(beeta/(beeta+3))*Ir     //current(mA)as transistors are identiical,I=Ie

//Result
printf ("load current I is %.2f mA ",I)
