clc
//Initialization of variables
T2=440 //F
T1=77 //F
Mch4=16
Mw=18
//calculations
h77=3725.1
ht=6337.9
ht2=7597.6
h772=4030.2
hwt=1260.3
h77w=45.02
hr77=-383040 //B/lbm mol
dHR=1*Mch4*0.532*(T1-T2) + 2*(h77-ht)
dHp=1*(ht2-h772) + 2*Mw*(hwt - h77w)
hrp=dHp+hr77+dHR
//results
printf("Enthalpy of combustion of gaseous methane = %d B/lbm mol fuel",hrp)
//The calculation in textbook is wrong Please check it using a calculator.
