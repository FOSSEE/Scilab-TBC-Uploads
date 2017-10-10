clear
//Given
A=2*10**-3                    //m**2
d=0.01                        //m
t=6*10**-3                    //m
K=3
a=8.854*10**-12

//Calculation
C=a*A/(d-t*(1-(1/3.0)))

//Result
printf("\n The capacitance of the capacitor is  %0.2f *10**-12 F",C*10**12)
