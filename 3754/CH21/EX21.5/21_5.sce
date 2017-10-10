clear//

//Variables

TON = 30.0            //Chopper ON time (in milli-second)
TOFF = 10.0           //Chopper OFF time (in milli-second)   

//Calculation

T = TON + TOFF        //Total time (in milli-second)
cdc = TON / T         //Chopper duty cycle
f = 1 / T             //Chopping frequency (in Hertz)

//Result

printf("\n Chopper duty cycle is  %0.3f .\nChopping frequency is  %0.3f  Hz.",cdc,f*10**3)
