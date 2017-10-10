clear
//Given
l=0.5                        //m
n=20                         //turns
r=50                         //cm
A1=40*10**-4                  //m**2
n1=25
A2=25*10**-4                   //m**2

//Calculation
u=4*%pi*10**-7
N=n*r
N2=n1*r
M=(u*N*N2*A2)/l

//Result
printf("\n Mutual induction of the system is %0.2f  *10**-3 H",M*10**3)
