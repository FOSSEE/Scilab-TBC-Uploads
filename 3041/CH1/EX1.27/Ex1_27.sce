//Variable declaration
Vz=20           //zener voltage(V)
Izmax=50        //maximum zener current(mA)
Rz=0            //zener resistance(ohms)
Rl=2.           //load resistance(ohm)
Vl=20.          //as Vz=Vl(V)
Rs=0.25         //source resistance(k ohms)

//Calculations
//Part a
Il=Vl/Rl           //load current(mA)      
Vsmin=(Rs+Rl)*Il   //as Iz is floating so Iz=0

//Part b
Is=Izmax+Il        //source current(mA)   
Vsmax=Vz+(Is*Rs)   //maximum source voltage(V)

//Results
printf ("Vsmin %.1f V",Vsmin)
printf ("Range of input voltage is %.1f to %.1f V",Vsmin, Vsmax)
