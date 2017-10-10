clear
//Given
M=8.4                         //g
d=7200.0
f=50                              //Hz
E=3.2*10**4
t=30*60.0

//Calculation
V=M/d
P=E/t
E1=P/(V*f)

//Result
printf("\n Energy dissipated per unit volume is %0.0f  J/m**3/cycle",E1)
