//Chapter 16, Example 16.1

clc
//Initialisation
e=5                         //emf i volt
r=1000                      //resistance in ohm


//Calculation
i=e/r                        //current in amp
v=0.75                      //voltage across diode from graph shown

//Results
printf("Current = %d mA\n",i*1000)
printf("Voltage = %.2f V",v)

