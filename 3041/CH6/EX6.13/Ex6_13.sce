

//Variable declaration
C=200*10**-9               //capacitance(F)
Lrcf=0.5*10**-3            //shunt across L2
L1=800*10**-6              //inductance(H)
L2=800*10**-6              //inductance(H)
M=200*10**-6              

//Calculations
L21=(L2*Lrcf)/(L2+Lrcf)                  //effective value of L2(uH)
Leq=L1+L21+2*M                           //equivalent inductance(H)
fo=1/(2*%pi*sqrt(Leq*C))        //output frequency(Hz)

//Results
printf ("the oscillation frequency is %.2f KHz",fo/1E+3)
