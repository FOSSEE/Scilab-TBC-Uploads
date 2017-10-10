clear
//Given
s=20*10**-6
n=30
I=1                    //A
G=25                    //ohm

//Calculation
Ig=s*n
S=Ig*G/(1-Ig)
Ra=G*S/(G+S)

//Result
printf("\n Resistance of ammeter is %0.3f  ohm",Ra)
