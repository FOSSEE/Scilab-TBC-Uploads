clear
//Given
A=10**-3                     //m**
n=10
I=2                        //A
B=0.1                     //T

//Calculation
//
t=n*I*A*B*cos(0)
t1=n*I*A*B*cos(60*3.14/180.0)

//Result
printf("\n (i) Torque when magnetic field is parallel to the field %0.0f  *10**-3 Nm",t*10**3)
printf("\n (ii) Torque when magnetic field is perpendicular to the field is zero")
printf("\n (iii) Torque when magnetic field is 60 degree to the field is %0.1f  *10**-3 Nm",t1*10**3)
