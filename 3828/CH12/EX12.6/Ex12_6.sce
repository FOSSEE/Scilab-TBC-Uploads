//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
RH=3.66*10**-4         //Hall coefficient
t=10**-3               //thickness
I=1                    //current
B=0.5                  //magnetic induction

//Calculations
VH=(RH*I*B)/t

//Result
mprintf("Hall voltage VH= %.3f V",VH)

