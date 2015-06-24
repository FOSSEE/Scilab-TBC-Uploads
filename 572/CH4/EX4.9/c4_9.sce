// (4.9)  A supply line carries a two-phase liquid–vapor mixture of steam at 20 bars. A small fraction of the flow in the line is diverted through a throttling calorimeter and exhausted to the atmosphere at 1 bar. The temperature of the exhaust steam is measured as 120C. Determine the quality of the steam in the supply line.

//solution

//variable initialization
P1 = 20                             //pressure in supply line in bars
P2 = 1                              //exhaust pressure in bar
T2 = 120                            //exhaust temperature in degree celcius

//from table A-3 at 20 bars
hf1 = 908.79                     //in kj/kg
hg1 = 2799.5                     //in kj/kg

//from table A-4, at 1 bar and 120 degree celcius
h2 = 2766.6                      //in kj/kg
h1 = h2                          //from throttling process assumption
x1 = (h1-hf1)/(hg1-hf1)
printf('the quality of the steam in the supply line is:\n\tx1 = %f',x1)

