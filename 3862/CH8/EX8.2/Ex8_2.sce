clear
//variable declaration

P=(120)              // force applied during measurement,N
E=(200000)           //Modulus of elasticity for steel,N/mm^2
L=(30)            //length of  Surveyor’s steel tape,mm
              
 
A=15*0.75             //area, mm^2
delta=((P*L*1000)/(A*E))     //Elongation,mm

printf("\n area= %0.2f  mm^2",A)
printf("\n Elongation= %0.3f  mm",delta)

printf("\n Hence, if measured length is %0.3f  m.", L)
printf("\n Actual length is %0.6f  m",(L+(delta/1000)))

printf("\n Actual length of line AB= %0.3f  m.",(150*(L+(delta/1000))/30))
