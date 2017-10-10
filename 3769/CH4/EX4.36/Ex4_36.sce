clear
//Given
d=4
t=2
K=4.0
C1=50*10**-12                    //f
V0=200                           //V

//Calculation
C=(d-t+(t/K))/d
q=C1*V0
V=V0*C
U=0.5*q*V
E=0.5*q*(V0-V)

//Result
printf("\n (i) Final charge on ach plate is  %0.3f  C", q)
printf("\n (ii) P.D batween the plates is  %0.3f  volts", V)
printf("\n (iii)Final energy in the capacitor is  %0.3f  J", U)
printf("\n (iv) Energy loss is  %0.3f  J", E)
