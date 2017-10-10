clear
//Initialization
r1=10                  //Resistance in Ohm
r2=5                  //Resistance in Ohm
v2=5                 //voltage source
i=2                 //current in Amp

//Calculation
//Considering 5 V as a source & replace the current source by its internal resistance,
i1=v2*(r1+r2)**-1                   //current using Ohms law
//Considering current source & replace the voltage source by its internal resistance,
r3=(r1*r2)*(r1+r2)**-1              //resistance in parallel
v3=i*r3                         //voltage using Ohms law
i2=v3*r2**-1                   //current using Ohms law
i3=i1+i2                       //total current

//Results
printf("\n Output Current, I = %.2f A",i3)

