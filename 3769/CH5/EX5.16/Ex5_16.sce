clear
//Given
ne=2.8*10**18
np=1.2*10**18
e=1.6*10**-19
t=1                             //S
V=220

//Calculation
q=(ne+np)*e
I=q/t
R=V/I

//Result
printf("\n Effective resistance of the tube is  %0.0f  ohm",R)
