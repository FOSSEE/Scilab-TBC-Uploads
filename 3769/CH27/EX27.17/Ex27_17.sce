clear
//Given
Ri=665.0        //ohm
Ib=15.0         //micro A
Ic=2            //mA
Ro=5*10**3      //ohm

//Calculation
Bac=Ic/Ib*10**3
Av=Bac*(Ro/Ri)

//Result
printf("\n  The voltage gain is %0.0f  ",Av)
