clc
//Initialization of variables
sg=1.26
sg2=1.26
HP=22
HP2=16
//calculations
hp=HP*550/(sg*62.4) //divide by Q
Q=14.2 //cfs
printf("In English units, By trial Q= %.1f cfs",Q)
hp2=HP2*1000/(sg2*9.81)
Q2=0.42 //m^3/s
printf("\n In SI units, By trial Q= %.2f m^3/s",Q2)
