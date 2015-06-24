

//Variable declaration
Vr=10.                          //peak to peak ripple voltage(V)
Vm=50.                          //peak output voltage(V)  
C=300.                          //Capacitance(uF)
Rl=470.                         //load resistance(ohms)
f=50.                           //frequency(Hz)

//Calculations
//Part a 
Vdc=Vm-(Vr/2)                   //dc voltage(V)      
C=Vdc/(f*Vr*Rl)                 //capacitance(mF)

//Part b
C1=300*10**-6                    //capacitance is increased(uF)
Vr=2*Vm/((2*f*C1*Rl)+1)
Vdc=Vm-Vr/2                     //load voltage ripple(V)
Idc=Vdc/Rl                      //average load current(mA)

//Results
printf ("value of capacitor is %.1f mF",(C/1E-6))
printf ("load voltage ripple is %.2f V and average load current is %.1f mA",Vdc,(Idc/1E-4))
