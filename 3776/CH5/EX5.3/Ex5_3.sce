clear
//given
F = 5       //K - force acting on the system
tan1 = (4/3) // the Tan of the angle of force with x axis
l_ab = 12   //inch - the total length of ab 
l = 3       // inch - Distance from 'a'
//caliculation
F_X = 4 //K
F_Y = 3 //k

//M_A = 0 momentum at point a is zero
// F_X*l- R_B_Y*l_ab = 0 
R_B_Y = F_X*l/l_ab

//M_B= 0 momentum at point b is zero
// R_A_Y*l_ab - F_X*(l_ab - l)
R_A_Y = F_X*(l_ab - l)/l_ab
    
//F_X = 0 forces in x directions
R_A_X = F_Y + R_B_Y  
R_B_X = R_B_Y      // since the angle is 45 (180/%pi)*

//resultants 
R_A = (R_A_X**2 + R_A_Y**2**0.5)
R_B = (R_B_X**2 + R_B_Y**2**0.5)
printf("The X,Y components and resultant of reaction force at A is %0.3f, %0.3f,%0.3f N",R_A_X,R_A_Y,R_A)
printf("\nThe X,Y components and resultant of reaction force at B is %0.3f, %0.3f,%0.3f N",R_B_X,R_B_Y,R_B)
