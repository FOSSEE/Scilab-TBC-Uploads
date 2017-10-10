clear
//Given
I0=10                 //A
w=314
L=5

//Calculation
E=0.5*L*I0**2
E0=w*L*I0
C=(E*2)/(E0**2)

//Result
printf("\n Capacitance of the capacitor is %0.2f  micro F",C*10**6)
