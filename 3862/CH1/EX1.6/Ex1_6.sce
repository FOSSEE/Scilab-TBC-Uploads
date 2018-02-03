clear
//Let ABC  be the triangle of forces,'theta' be the angle between F1 and F2, and 'alpha' be the angle between resultant and F1 

//

//variable declaration
cnv= 180/%pi 
F1=(400)                         //all forces are in newtons,'N'
F2=(260)
R=(520)

//calculations

theta=acos(((R**2)-(F1**2)-(F2**2))/(2*F1*F2))*cnv

alpha=asin(F2*sin(theta*%pi/180)/R)*cnv

printf("\n theta= %0.2f  °",theta)
printf("\n alpha= %0.2f  °",alpha)
