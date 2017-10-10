clear
//Given
e_0 = -500 //10-6 m/m 
e_45 = 200 //10-6 m/m 
e_90 = 300 //10-6 m/m
E = 200    //Gpa - youngs modulus of steel 
v = 0.3    // poissions ratio 
//Caliculations 

e_xy = 2*e_45 - (e_0 +e_90 ) //10-6 m/m from equation 8-40 in text
// from example 8.7
e_x = -500        //10-6 m/m The contraction in X direction
e_y = 300         //10-6 m/m The contraction in Y direction
e_xy = -600       //10-6 m/m discorted angle
centre = (e_x + e_y)/2  //10-6 m/m 
point_x = -500          //The x coordinate of a point on mohr circle
point_y = 300           //The y coordinate of a point on mohr circle
Radius = 500            //10-6 m/m - from mohr circle
e_1  = Radius +centre //MPa The principle strain
e_2 = -Radius +centre //MPa The principle strain

stress_1 = E*(10**-3)*(e_1+v*e_2)/(1-v**2) //MPa the stress in this direction 
stress_2 = E*(10**-3)*(e_2+v*e_1)/(1-v**2) //MPa the stress in this direction 
printf("\n The principle stresses are  %0.2f MPa %0.2f MPa",stress_1,stress_2)
