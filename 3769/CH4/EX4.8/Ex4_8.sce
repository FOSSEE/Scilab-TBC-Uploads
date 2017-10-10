clear
//Given
e=8.854*10**-12
K=6
A=30
d=2.0*10**-3
E=500

//Calculation
C=e*K*A/d
V=E*d*10**3
q=C*V

//Result
printf("\n Capacitance of a parallel plate  %0.3f  micro C",q*10**3)
