clear
//Given
I0=141.4                    //A
w=314
t=3*10**-3                         //s

//Calculation
//
f=w/(2*%pi)
T=1/f
I=-I0*t*sin(314*180/3.14)

//Result
printf("\n (i) The maximum value is %0.3f  A",I0)
printf("\n (ii) Frequency is %0.0f  Hz",f)
printf("\n (iii) Time period is %0.2f  S",T)
printf("\n (iv) The instantaneous value is %0.2f  A",I*10**3)
