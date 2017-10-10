clear
//Given
//
d_bolt = 20.0       //mm,diameter,This is not the minimum area
d_bolt_min = 16.0   //mm This is at the roots of the thread 
//This yealds maximum stress 
A_crossection = (%pi)*(d_bolt**2)/4         //sq.mm
A_crossection_min = (%pi)*(d_bolt_min**2)/4 //sq.mm ,This is minimum area which yeilds maximum stress
load1 = 10.0 //KN
BC = 1.0    //m
CF = 2.5    //m
contact_area = 200*200  // sq.mm , The contact area at c

//caliculations 
//Balancing forces in the x direction:
// Balncing the moments about C and B:
Fx = 0 
R_cy = load1*(BC+CF)   //KN , Reaction at C in y-direction
R_by = load1*(CF)      //KN , Reaction at B in y-direction
//Because of 2 bolts
stress_max = (R_by/(2*A_crossection_min))*(10**3)  // MPA,maximum stess records at minimum area
stress_shank = (R_by/(2*A_crossection))*(10**3)    // MPA
Bearing_stress_c = (R_cy/contact_area)*(10**3)     //MPA, Bearing stress at C

printf("\n The bearing stress at C  is   %0.3f MPa",(Bearing_stress_c) )
printf("\n The maximum normal stress in BD bolt is:  %0.0f MPa",stress_max)
printf("\n The tensile strss at shank of the bolt is:  %0.1f MPa",stress_shank)
