//Chapter 13 : Thin Film Preparation Techniques and their Applications

clear;

//Variable declaration
Pmax=18*10**-3        //maximum power output
F=0.6               //fill factor
Voc=300*10**-3        //open circuit voltage
Pin=21*10**-3         //Power input
A=5                   //area of solar cell

//Calculations
Isc=Pmax/(F*Voc)
n=(Pmax/(Pin*A))*100

//Result
mprintf("Isc = %d mA",Isc*1000)
mprintf("\nPercentage of efficieny = %f percent",n)
