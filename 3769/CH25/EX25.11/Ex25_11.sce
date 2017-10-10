clear
//Given
mp=1.007825
mn=1.008665
m=39.962589
a2=931.5
Z=40.0

//Calculation
E=20*mp+20*mn
m1=E-m
Eb=m1*a2
B=Eb/Z

//Result
printf("\n Binding energy per nucleon is %0.3f  Mev/nucleon",B)
