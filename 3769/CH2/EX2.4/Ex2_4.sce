clear
//Given
q=2*10**-8
E=2*10**4
m=80*10**-6
g=9.8

//Calculation
//
a=q*E/(m*g)
b=atan(a)*180/3.14
T=(q*E/(sin(b*3.14/180.0)))*10**-4

//Result
printf("\n The angle is  %0.0f  degree",b)
printf("\n Tension in the thread of the pendulum is  %0.2f  *10**-4 N",T*10**8)
