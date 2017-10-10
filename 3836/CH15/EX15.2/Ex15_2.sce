clear
//

//Initialisation
f=50                   //frequency
C=2*10**-6             //Capacitance

//Calculation
w=2*%pi*f                 //Angular Frequency  
Xc=1/(w*C)                 //Reactance

//Result
printf("\n Reactance, Xl = %.2f KOhm",Xc/1000)

