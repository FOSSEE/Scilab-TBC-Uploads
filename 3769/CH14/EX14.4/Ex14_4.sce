clear
//Given
N=100
A=3
B=0.04                  //T
w=60
R=500                         //ohm

//Calculation
E0=N*A*B*w
I0=E0/R
P=E0*I0

//Result
printf("\n Maximum power dissipated in the coil is %0.3f  W", P)
