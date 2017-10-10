clear
//Given
Np=5000
Vp=2200                       //V
Vs=220                         //V
Pout=8                         //K W
n=0.9

//Calculation
Ns=(Vs*Np)/Vp
Pin=Pout/n

//Result
printf("\n (ii) Input power is %0.1f  K W",Pin)
