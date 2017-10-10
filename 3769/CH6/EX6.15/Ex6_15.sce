clear
//Given
l1=33.7
l2=51.9

//Calculation
S1=l1/(100-l1)
s11=l2/(100-l2)
s=((s11*12)/S1)-12
R=s*S1

//Result
printf("\n Value of R is %0.2f ohm \nValue of S is %0.1f ohm",R,s)
