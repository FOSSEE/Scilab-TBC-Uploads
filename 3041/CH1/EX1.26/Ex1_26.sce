//Variable declaration
Vs=10.                       //supply voltage(V)  
Rs=1                         //supply resistane(ohm)
Vl=10.                       //load voltage(V)
Vi=50.                       //nput voltage(V)
Iz=32                        //zener diode current(mA)
Is=40                        //supply current(mA) 

//Calculations
//Part a (Rl is min when Iz=0)  
Is=(Vi-Vs)/Rs               //source current(mA)       
Rlmin=Vl/(Vi-Vs)            //load resistance minimum(ohm) 

//Part b(Rl is maximum when Iz=32 mA)  
Il=(Is-Iz)*10**-3          //load current(A) 
Rlmax=Vl/Il                //maximum load resistance(k ohms)
P=Vl*Iz                    //max diode wattage consumed(mW)

//Results
printf ("Range of Rl is %.2f ohm to %.2f k ohm" ,(Rlmin/1E-3),(Rlmax/1E+3))
printf ( "Il = %.e A",Il)
printf ("max power consumed is %.f mW",P)
