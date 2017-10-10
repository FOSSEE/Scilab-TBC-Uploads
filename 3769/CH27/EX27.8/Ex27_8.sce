clear
//Given
Il=4.0              //mA
Vz=6                //V
E=10.0              //V

//Calculation
Lz=5*Il
L=Il+Lz
Rs=E-Vz
Rs1=Rs/(L*10**-3)

//Result
printf("\n The value of series resister Rs %0.0f  ohm",Rs1)
