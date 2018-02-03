clear
//Let the magnitude of the smaller force be F. Hence the magnitude of the larger force is 2F

//
//variable declaration
R1=260            //resultant of two forces,N
R2=(180)          //resultant of two forces if larger force is reversed,N



//calculations

F=sqrt(((R1**2)+(R2**2))/10)
F1=F
F2=2*F
theta=acos(((R1**2)-(F1**2)-(F2**2))/(2*F1*F2))*180/%pi 

printf("\n F1= %0.3f  N",F1)
printf("\n F2= %0.3f  N",F2)
printf("\n theta= %0.1f  °",theta)
