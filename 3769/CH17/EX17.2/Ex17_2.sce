clear
//Given
u1=1.0
u2=1.526
i=45                      //degree
//Calculation
sinr=(u1*sin(i*3.14/180.0))/u2
r=asin(sinr)*180/3.14
d=i-r

//Result
printf("\n Angle of deviation is %0.2f  degree",d)
