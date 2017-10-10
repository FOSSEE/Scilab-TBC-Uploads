clear
//Given
B=0.2                   //T
a=30                        //degree
t=0.06                         //Nm

//Calculation
//
M=t/(B*sin(a*3.14/180.0))
U=M*B*cos(1*3.14/180.0)

//Result
printf("\n (i) Magnetic moment of the magnet is %0.1f  Am**2",M)
printf("\n (ii) Orientation of the magnet is %0.0f  ",U)
