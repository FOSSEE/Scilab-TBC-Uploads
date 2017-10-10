clear
//Given
N=10.0
V=230                    //V

//Calculation
//
Vrpm=sqrt(2)*V
Vsm=Vrpm/N
Vdc=Vsm/%pi 

//Result
printf("\n (i) The output dc voltage is %0.2f  V",Vdc)
printf("\n (ii) Peak inverse voltage is %0.2f  V",Vsm)
