 

//Variable declaration
C1=800*10**-9                   //capacitance(F)
C2=2400*10**-9                  //capacitance(F)
L=50*10**-6                     //inductance(H)

//Calculations
Ceq=(C1*C2)/(C1+C2)                //equivalent capacitance(F)
fo=1/(2*%pi*sqrt(L*Ceq))  //output frequency(Hz)

//Results
printf ("the oscillation frequency is %.2f KHz",fo/1E+3)
