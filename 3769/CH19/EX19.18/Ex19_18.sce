clear
//Given
ve=24.0
fe=8.0
f0=250.0
a=10

//Calculation
ue=1/((1/ve)-(1/fe))
D=f0-ue
d=a/2.0
A=d/f0

//Result
printf("\n (i) Distance between objective and eyepiece is %0.3f  cm", D)
printf("\n (ii) Angle subtended by the sun at the objective is %0.3f  rad",A)
