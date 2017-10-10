clear
//Given
//
S_x = 3.0 //MPa _ the noraml stress in x direction
S_y = 1.0 //MPa _ the noraml stress in Y direction
c = (S_x + S_y)/2 //MPa - The centre of the mohr circle 
point_x = 1 //The x coordinate of a point on mohr circle
point_y = 3  //The y coordinate of a point on mohr circle
//Caliculations 

Radius = ((point_x-c)**2 + point_y**2**0.5) // The radius of the mohr circle
//22.5 degrees line is drawn 
o = 22.5 //degrees 
a = 71.5 - 2*o //Degrees, from diagram 
stress_n = c + Radius*sin((180/%pi)*(o)) //MPa The normal stress on the plane 
stress_t =  Radius*cos((180/%pi)*(o)) //MPa The tangential stress on the plane
printf("\n The normal stress on the 22 1/2 plane  %0.2f MPa",stress_n)
printf("\n The tangential stress on the 22 1/2 plane  %0.2f MPa",stress_t)
printf("\n answer varies due to rounding off errors")

