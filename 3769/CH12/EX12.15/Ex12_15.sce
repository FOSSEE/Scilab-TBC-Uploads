clear
//Given
L=130*10**-3                   //H
I1=20                           //mA
I2=28                           //mA
t=140.0*10**-3                    //S

//Calculation
l=I2-I1
e=(-L*l)/t

//Result
printf("\n Magnitude of induced e.m.f is %0.2f  *10**-3 V",e)
printf("\n Direction oppose the increase in current")
