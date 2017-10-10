clear
//

//Initialisation
I=5                   //sinusoidal Current
R=200                  //Resistance in Ohm
f=50                  //Frequency in Hertz
L=400*10**-3               //Inductancec in Henry
C=50*10**-6               //Capacitance in Henry 

//Calculation 
Vr=I*R                         //Voltage across resistor
Xl=2*%pi*f*L               //Reactance
Xc=1/(2*%pi*f*C)                //Reactance
i=Xl-Xc

//Result
printf("\n Z = %d + j %d Ohms",R,i)

