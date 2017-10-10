clear//

//Variables 

VCC = 20.0                       //Supply voltage (in volts)
VCEQ = 10.0                      //Collector-to-emitter voltage (in volts)
ICQ = 600.0 * 10**-3             //Collector current (in Ampere)
RL = 16.0                        //Load resistance (in ohm)
Ip = 300.0 * 10**-3              //Output current variation (in Ampere)

//Calculation

Pindc = VCC * ICQ                //dc power supplied (in watt)
PRLdc = ICQ**2 * RL              //dc power consumed by load resistor (in watt)  
I = Ip / 2**0.5                  //r.m.s. value of Collector current (in Ampere) 
Poac = I**2 * RL                 //a.c. power across load resistor (in ohm) 
Ptrdc = Pindc - PRLdc            //dc power delievered to transistor (in watt)
Pcdc = Ptrdc - Poac              //dc power wasted in transistor collector (in watt) 
no = Poac / Pindc                //Overall efficiency
nc = Poac / Ptrdc                //Collector efficiency  

//Result

printf("\n Power supplied by the d.c. source to the amplifier circuit is  %0.3f  W.",Pindc)
printf("\n D.C. power consumed by the load resistor is  %0.3f  W.",PRLdc)
printf("\n A.C. power developed across the load resistor is  %0.3f  W.",Poac)
printf("\n D.C. power delivered to the transistor is  %0.3f  W.",Ptrdc)
printf("\n D.C. power wasted in the transistor collector is  %0.3f  W.",Pcdc)
printf("\n Overall efficiency is  %0.3f .",no)
printf("\n Collector efficiency is  %0.1f percentage.",nc * 100)
