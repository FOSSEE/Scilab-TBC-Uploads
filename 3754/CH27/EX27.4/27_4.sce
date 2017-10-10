clear//

//Variables 

Ptrdc = 20.0                        //dc Power (in watt)
Poac = 5.0                          //ac Power (in watt)     

//Calculation

ne = Poac / Ptrdc                   //Collector efficiency   
P = Ptrdc                           //Power rating of the transistor

//Result

printf("\n Collector efficiency is  %0.3f percentage.\nPower rating of the transistor is  %0.3f  W.",ne*100,P)
