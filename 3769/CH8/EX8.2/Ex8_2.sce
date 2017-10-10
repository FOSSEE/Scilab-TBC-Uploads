clear
//Given
n=1.0*10**29                          //m**-3
e=1.6*10**-19                           //C
A=2*10**-6                                       //m**2
I=5                                       //A
B=0.15                                   //T
a=90                                     //degree

//Calculation
//
Vd=I/(n*e*A)
Fm=e*Vd*B*sin(a)

//Result
printf("\n Force acting on each electron is %0.2f *10**-24 N",Fm*10**24)
