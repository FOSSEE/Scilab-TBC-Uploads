clear
//Given
A=60                            //Degree

//Calculation
//
a=sqrt(2)*sin(30*3.14/180.0)
b=asin(a)*180/3.14
c=(b*2)-A
i=(A+c)/2.0
r=A/2.0

//Result
printf("\n (i) Angle of minimum deviation is %0.0f  Degree",c)
printf("\n (ii) Angle of incidence is %0.0f  Degree",i)
printf("\n (iii) The angle of refraction is %0.3f  Degree", r)
