//Chapter 13 : Thin Film Preparation Techniques and their Applications

clear;

//Variable declaration
Pmax=21*10**-3        //maximum power output
Isc=100*10**-3        //short circuit voltage
Voc=500*10**-3        //open circuit voltage
Pin=35*10**-3         //Power input
A=4                   //area of solar cell

//Calculations
Fill_Factor=Pmax/(Isc*Voc)
n=(Pmax/(Pin*A))*100

//Result
mprintf("Fill factor = %.2f",Fill_Factor)
mprintf("\nPercentage of efficieny = %d percent",n)    

//The answer provided in the textbook is wrong

