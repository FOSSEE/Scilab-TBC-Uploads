clear
//

//Initialisation
f=100                  //frequency
l=25*10**-3               //Inductance
Vl=5                    //AC Voltage (Sine)

//Calculation
w=2*%pi*f                 //Angular Frequency  
Xl=w*l                 //Reactance
Il=Vl*Xl**-1

//Result
printf("\n Peak Current, IL = %d mA",Il*10**3)

