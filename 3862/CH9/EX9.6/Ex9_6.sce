clear
//variable declaration

//As supports A and B are simple supports and loading is only in vertical direction, the reactions RA and RB are in vertical directions only.

//summation of all  horizontal forces is zero & vertical forces is zero.

P1=(30)                                     //vertical down  Load  at 1m from A,KN
P2=(40)                                     //vertical down  Load  at 6.5m from A,KN                   
Pu=(20)                                     //uniform distributed load from 2m to 5m from A,KN/m(in 3m of span).

Rb=(Pu*3*3.5+P1*1+P2*6.5)/5
printf("\n RB= %0.2f  KN",Rb)
Ra=Pu*3+P1+P2-Rb
printf("\n RA= %0.2f  KN",Ra)
