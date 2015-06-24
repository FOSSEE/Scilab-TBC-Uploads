
epsilon=8.854D-12
r=sqrt(.1^2+.1^2)//distance b/w A and C
Fca=(2D-6)*(4D-6)/(4*%pi*epsilon*r^2)//from A to C
Fcb=(4D-6)*(2D-6)/(4*%pi*epsilon*.1^2)//from C to B
Fcd=(4D-6)*(4D-6)/(4*%pi*epsilon*.1^2)//from C to D
//Fr has horizontal and vertical components as Frx and Fry respectively
Frx=Fcd-Fca*cos(45*%pi/180)
Fry=Fcb-Fca*sin(45*%pi/180)
Fr=sqrt(Frx^2+Fry^2)
mprintf("Resultant force acting on charge at C=%f N", Fr)
//error in textbook answer
