clear
T = 12.9*(10**-6) ///F
t = 100.00 // F
l_ab = 6.71 //inch
l_bc = 8.49 //inch
e_ab = T*t*l_ab //in-elongation
e_bc = T*t*l_bc //in-elongation
k = e_ab/e_bc // ratio of cosines of deflected angles
// t_1 and t_2 be deflected angles
//t_2 = 45+26.6-t_1 the sum of angles is 360
//applying cos on both sides
t_1 = atand(0.5)
//
e = e_bc/cosd(t_1)
printf("\n The displacement in point B is : %e in",e )
printf("\n It forms an angle of %f degrees with vertical",45-t_1 )
