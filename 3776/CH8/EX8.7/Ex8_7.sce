clear
//
e_x = -500   //10-6 m/m The contraction in X direction
e_y = 300   //10-6 m/m The contraction in Y direction
e_xy = -600 //10-6 m/m discorted angle
centre = (e_x + e_y)/2  //10-6 m/m 
point_x = -500 //The x coordinate of a point on mohr circle
point_y = 300  //The y coordinate of a point on mohr circle
Radius = 500   //10-6 m/m - from mohr circle
e_1  = Radius +centre    //MPa The principal strain
e_2 = -Radius +centre    //MPa The principal strain
k = atan(300.0/900) // from geometry
k_1 = (180/%pi)*(k)
printf("\n The principal strains are %0.3f um/m %0.3f um/m",e_1,e_2)
printf("\n The angle of principal plane %0.2f degrees",k_1)
