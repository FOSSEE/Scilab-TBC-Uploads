clear
//Given
V=200              //V
P=500.0                 //W
V1=160               //v

//Calculation
R=V**2/P
H=V1**2/R
P1=P-H
H1=P1*100/P

//Result
printf("\n Heat percentage is %0.3f  percentage", H1)
