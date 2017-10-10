clear
//Given
q=2*1.6*10**-19                  //C
v=6*10**5                        //m/s
B=0.2                             //T
a=90                              //degree
m=6.65*10**-27

//Calculation
//
Fm=q*v*B*sin(a)
a=Fm/m

//Result
printf("\n Force on alpha particle is %0.2f *10**-14 N",Fm*10**14)
printf("\n Acceleration of alpha particle is %0.2f *10**12 m/s**2",a*10**-12)
