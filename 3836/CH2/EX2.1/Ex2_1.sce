clear
//Initialisation
v1=15.8                 //voltage across r1
v2=12.3                 //voltage across r2
r2=220                  //resistance R2 in ohm

//Calculation
v=v1-v2                 //voltage difference across the resistor
i=v/r2                  //current in ampere

//Result
printf("\n Current, I = %.1f mA",i*1000)

