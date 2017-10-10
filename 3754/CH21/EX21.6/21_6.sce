clear//

//Variables

TON = 30.0                 //Chopper ON time (in milli-second)
TOFF = 10.0                //Chopper OFF time (in milli-second)   
Vdc = 200.0                //dc voltage (in volts)

//Calculation

T = TON + TOFF             //Total time (in milli-second)
cdc = TON / T              //Chopper duty cycle
VL = Vdc * cdc             //dc output voltage (in volts)  

//Result

printf("\n Average valuye of dc voltage is  %0.3f  V.",VL)
