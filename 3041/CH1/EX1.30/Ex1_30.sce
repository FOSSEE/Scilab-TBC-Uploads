

//Variable declaration
Vl=24                       //battery voltage(V)
Vm=60*(sqrt(2))        //peak voltage(V)
Ip=2.5                      //peak current(A)
c=20                        //charge(Ah)

//Calculations
//Part a
theta=asin(Vl/Vm)     //angle at which conduction begins
Rs=(Vm-Vl)/Ip              //source resistance(ohms) 

//Part b
Idc=(Vm/(%pi)*Rs)*(cos(theta))-(((%pi)-(2*theta))/2*%pi)*(Vl/Rs)   //load current(A)
T=c/Idc                                                                             //time to deliver 20Ah(h)

//Results
printf ("resistance connected in series is %.1f ohm",Rs)
printf ("time required to deliver a charge of 20 Ah is %.1f h",(T/1E-3))
printf ("Idc %.2f A",(Idc/1E+3))
