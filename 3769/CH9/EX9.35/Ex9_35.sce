clear
//Given
Ig=0.015               //A
G=5
I=1
V=15

//Calculation
S=(Ig*G)/(I-Ig)
R=G*S/(G+S)
R1=(V/Ig)-G
R2=R1+G

//Result
printf("\n (i) Resistance of ammeter of range 0-1 A is %0.3f  ohm", R)
printf("\n (ii) Resistance of ammeter of range 0-15 A is %0.3f  ohm", R2)
