

//Variable declaration
fo = 50                           //output frequency(KHz)
L = 10^-3                        //inductance(H)  
ro = 100                          //output resistance(k ohms)
Q = 80                            //coil inductance
Ri = 10                           //input resistance(k ohms)
beta = 125                        //common emitter current gain 

//Calculations
//Part a
C  = 1/(((2*(%pi)*fo)^2)*L)   //tunning capacitance(nF)
r = (2*(%pi)*fo*L)/Q           //internal resistance(k ohms)
req = (Q^2)*r                     //equivalent resistance(k ohms) 
R = (ro*req)/(ro+req)              //ro||req(k ohms)
Avo = -(beta*R)/Ri                 //voltage gain

//Part b
Qcircuit = R/(2*(%pi)*fo*L)    //circuit inductance
BW = fo/Qcircuit                   //bandwidth

//Results
printf ("a)value of capacitance is %.f nF",C/1E-3)
printf ("  gain is %.1f",Avo)
printf ("b)bandwidth is %.f Hz",BW/1E-3)
printf ("Note : value used for beta in texbook is wrong in the solution")
