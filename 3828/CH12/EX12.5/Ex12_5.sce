//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
RH=3.22*10**-4         //Hall coefficient
rho=9.0*10**-3
e=1.6*10**-19

//Calculations
p=1/(RH*e)/10**21
myup=RH/rho

//Result
mprintf("Hole concentration= %.2f*10**21 m**-3",p)
mprintf("\nMobility of holes= %.5f m**2 V**-1 s**-1",myup)

