clear
//given
a=30                              //degree
B=800*10**-4                      //T
t=0.016                           //Nm
A=2*10**-4                        //m**2
n=1000                            //turns

//Calculation
M=t/(B*sin(a*3.14/180.0))
W=2*M*B
I=M/(n*A)

//Result
printf("\n (a) Magnetic moment of the magnet is %0.2f  Am**2",M)
printf("\n (b) Work done is %0.3f  J",W)
printf("\n (c) Current flowing through the solenoid is %0.0f  A",I)
