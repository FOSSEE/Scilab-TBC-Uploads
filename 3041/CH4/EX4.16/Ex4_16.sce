//Variable declaration
R1 = 12.                 //resistance(k ohms)
R2 = 100.                //resistance(k ohms)
Rc = 2                   //collector resistance(k ohms)
Ic = 1.2                 //collector current(mA)
beta = 60                //common emitter current gain
Ib1 = 1                  //(say)
Rs = 1                   //source resistance(k ohms)
Vs = 1                   //source vcoltage(say)

//Calculations
//Part a
rpi = ((25*beta)/Ic)*10^-3     //dynamic junction resistance(k ohms)
Rb = (R1*R2)/(R1+R2)            //R1||R2(k ohms)
r = (Rb*rpi)/(Rb+rpi)           //Rb||rpi(k ohms)
Ro1 = (Rc*rpi)/(Rc+rpi)         //Rc||rpi(k ohms)
Vo1 =  -(beta*Ib1*Ro1)      //base to emitter voltage(V)
Vbe2 = Vo1
Ib2 = Vo1/rpi                   //base current(mA)
Ai = Ib2/Ib1                    //current gain 

//Part b
Ib11 = (Rs*r)/((Rs+r)*rpi)          //base currents(mA)
Ib21 = Ib11*Ai                //base current(mA)
Avo1 =  Ib21*rpi           //voltage gain
Vo1 = Avo1

//Results
printf ("current gain is %.2f",Ai)
printf ("overall voltage gain is %.2f",Avo1)
printf ("Note : solution in the textbook is incorrect")
