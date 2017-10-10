clear
//Given
V=75                //mV
Ig=0.025              //A
I=25                     //mA
I1=100
V1=750

//Calculation
G=V/I
S=(Ig*G)/(I1-Ig)
R=(V1/Ig)-G

//Result
printf("\n (i) Resistance for an ammeter of range 0-100 A is %0.5f  ohm",S)
printf("\n (ii) Resistance for an ammeter of range 0-750 A is %0.5f  ohm",R)
