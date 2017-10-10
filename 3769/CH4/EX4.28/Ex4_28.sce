clear
//Given
C1=16*10**-6                    // F
C2=4                      //micro F
V1=100                   //V
Cp=20*10**-6               //f

//Calculation
q=C1*V1
U1=0.5*C1*V1**2
V=q/Cp
U2=0.5*Cp*V**2

//Result
printf("\n (i) Potential difference across the capacitor is  %0.3f  Volts",  V)
printf("\n (ii) The electrostatic energies before and after the capacitors are connected  %0.3f  J",U2)
