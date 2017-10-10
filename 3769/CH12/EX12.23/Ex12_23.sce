clear
//Given
N2=1000
I1=5.0                          //A
a2=0.4*10**-4                  //Wb
dl=-24                             //A
dt=0.02                              //S

//Calculation
M=(N2*a2)/I1
eb=(-M*dl)/dt

//Result
printf("\n (i) Mutual induction between A and B is %0.3f  H", M)
