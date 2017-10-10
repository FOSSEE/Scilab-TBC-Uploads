clear
//Given
uw=1.33
uo=1.20

//Calculation
//
uow=uw/uo
sinr=(sin(30*3.14/180.0))/uow
r=asin(sinr)*180/3.14

//Result
printf("\n Angle of refraction in water is %0.1f  degree",r)
