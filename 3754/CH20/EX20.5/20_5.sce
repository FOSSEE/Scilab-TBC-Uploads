clear//

//Variables

V0 = 10                      //Regulated dc supply (in volts)
LR = 0.00002                 //Line regulation 

//Calculation

dV = LR * V0                 //Change in output voltage (in volts)

//Result

printf("\n Change in output voltage is  %0.3f  mV.",dV * 10**3)
