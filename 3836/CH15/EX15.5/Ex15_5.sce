clear
//

//Initialisation
I=5                   //sinusoidal Current
R=10                  //Resistance in Ohm
f=50                  //Frequency in Hertz
L=0.025               //Inductancec in Henry
 

//Calculation 
Vr=I*R                         //Voltage across resistor
Xl=2*%pi*f*L               //Reactance
VL= I*Xl                       //Voltage across inductor
V=sqrt((Vr**2)+(VL**2))   //total voltage
phi=atan(VL*Vr**-1)       //Phase Angle in radians

//Result
printf("\n (a V = %.1f V",V)
printf("\n (b V = %.2f V",phi*180/%pi)
