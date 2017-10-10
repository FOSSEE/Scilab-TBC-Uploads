clear//

//Variables

Vdc = 12.0                    //Average value of voltage (in volts)
Idc = 100.0                   //Average value of current (in milli-Ampere) 
gamma = 0.01                  //Ripple factor
L = 1.0                       //Inductance (in Henry) 

//Calculation

C = 1.195 / (gamma * L)       //Capacitance

//Result

printf("\n Capacitance is  %0.3f  micro-Farad.",C)
