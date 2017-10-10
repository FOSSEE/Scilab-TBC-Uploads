clear
//Given
B=49
Ie=12          //mA
Ib=240         //microA

//Calculation
A=(B/1+B)*10**-2
Ic=A*Ie
Ic1=B*Ib

//Result
printf("\n  The value of Ic using A is %0.3f  mA",Ic)
printf("\n  The value of Ic using B is %0.3f  mA",Ic1*10**-3)
