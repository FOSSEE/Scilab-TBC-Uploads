clear
//Given 
//
//
S_x = -2 //MPa _ the noraml stress in x direction
S_y = 4 //MPa _ the noraml stress in Y direction
c = (S_x + S_y)/2 //MPa - The centre of the mohr circle 
point_x = -2 //The x coordinate of a point on mohr circle
point_y = 4  //The y coordinate of a point on mohr circle
Radius = ((point_x-c)**2 + point_y**2**0.5) // The radius of the mohr circle
S_1  = Radius +1//MPa The principle stress
S_2 = -Radius +1 //MPa The principle stress
S_xy_max = Radius //MPa The maximum shear stress
printf("\n The principle stresses are %0.3f MPa %0.3f MPa",S_1,S_2)
printf("\n The maximum shear stress %0.3f MPa",S_xy_max)
printf("\n The maximum tensile stress which is the result of all stresses must act as shown in the figure")
