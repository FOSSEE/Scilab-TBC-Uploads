clear
//Given
C1=10.0              //micro F
C2=10.0
C3=10.0
C4=10*10**-3
V=500              //V

//Calculation
Cs=1/((1/C1)+(1/C2)+(1/C3))
Cab=Cs+(C4*10**3)
Q=(C1*(500/3.0))*10**-3
Q1=C4*V

//Result
printf("\n (a) The equivalent capacitance of the network is %0.1f  micro F",Cab)
printf("\n (b) The charge on 12 micro F Capacitor is %0.3f  *10**-3 C",Q1)
