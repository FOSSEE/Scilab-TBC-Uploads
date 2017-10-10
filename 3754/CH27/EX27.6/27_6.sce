clear//

//Variables 

nc = 0.5                       //Efficiency
VCC = 24.0                     //Source voltage (in volts)
Poac = 3.5                     //a.c. power output (in watt)

//Calculation

Ptrdc = Poac / nc              //dc power (in watt)
Pcdc = Ptrdc - Poac            //Power dissipated as heat (in watt)   

//Result

printf("\n Total power within the circuit is  %0.3f  W.\nThe power Pcdc =  %0.3f  W is dissipated in the form of heat within the transistor collector region.",Ptrdc,Pcdc)
