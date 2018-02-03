clear
//

//The rectangle is divided into four triangles
//The lines AE and FC are parallel to x-axis
 
//variable declaration

theta=asin(4.0/5.0)

AB=100.0
BK=AB*sin((90*%pi/180)-theta)
ND=BK
FD=60.0/sin(theta)
AF=150.0-FD
AE=AB/cos((90*%pi/180)-theta)
FC=AE
A=125.0*60.0/2.0

//Moment of inertia of the section about axis x-x=Sum of the momentsof inertia of individual triangular areasabout axis

Ixx=(125*(60**3)/36)+(A*((ND*4.0/3.0)**2))+(125*(60**3)/36)+(A*((ND*2.0/3.0)**2))+(125*(60**3)/36)+(A*((ND*1.0/3.0)**2))+(125*(60**3)/36)+(A*((ND*1.0/3.0)**2))

printf("\n Ixx= %0.0f  mm^4",Ixx)
