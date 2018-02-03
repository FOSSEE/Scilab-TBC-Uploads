clear
//components of force in horizontal and vertical components. 
//
//variable declaration

F= 20                        //force in wire, KN

//calculations
Fx= F*cos(60*%pi/180)          
Fy= F*sin(60*%pi/180)

printf("\n %0.3f KN totheleft ",Fx)
printf("\n %0.3f KN downward ",Fy)
