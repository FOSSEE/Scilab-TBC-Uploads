//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
RH=7.5*10**-5         //Hall coefficient
sigma=200              //conductivity
e=1.6*10**-19          //electron charge

//Calculations
n=1/(e*RH)/10**22
myu=sigma*RH

//Result
mprintf("Charge density= %.2f*10**22 /m**3",n)
mprintf("\nMobility= %.3f m**2 V**-1 s**-1",myu)
