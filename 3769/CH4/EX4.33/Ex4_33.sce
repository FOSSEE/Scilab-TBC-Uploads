clear
//Given
e=8.854*10**-12
A=2
t1=0.5*10**-3
t2=1.5*10**-3
t3=0.3*10**-3
K1=2.0
K2=4.0
K3=6.0

//Calculation
C=(e*A)/((t1/K1)+(t2/K2)+(t3/K3))

//Result
printf("\n The capacitance of the capacitor is  %0.3f *10**-6 F",C*10**6)
