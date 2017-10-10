//Chapter 3, Example 3.3
clc
//Initialisation
v1=30                        //voltage
r1=10*10**3                  //resistance in ohm
r2=10*10**3                  //resistance in ohm
r3=10*10**3                  //resistance in ohm

//Calculation
voc=v1/2                   //open circuit voltage
r23=(r2*r3)/(r2+r3)        //resistance in parallel in ohm
rt=r1+r23                  //resistance in ohm
i1=v1/rt                   //current in ampere
isc=i1/2                   //short circuit current in ampere
R=voc/isc                  //resistance in ohm


//Results
printf("For Thevenin Circuit \n")
printf("V = %d V\n",voc)
printf("R = %d kOhm\n\n",R/1000)
printf("For Norton Circuit \n")
printf("I = %d mA\n",isc*1000)
printf("R = %d kOhm",R/1000)
