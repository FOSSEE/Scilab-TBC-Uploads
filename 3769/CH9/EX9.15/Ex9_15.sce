clear
//Given
q=1.6*10**-19                          //c
B=2                                    //T
m=1.66*10**-27                         //Kg
K=5*10**6

//Calculation
//
f=(q*B)/(2.0*%pi*m)
v=sqrt((2*K*q)/m)
r=(m*v)/(q*B)

//Result
printf("\n (i) The frequency needed for applied alternating voltage is %0.0f  *10**7 HZ",f*10**-7)
printf("\n (ii) Radius of the cyclotron is %0.2f  m",r)
