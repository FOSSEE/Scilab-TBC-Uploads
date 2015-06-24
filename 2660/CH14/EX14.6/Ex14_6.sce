clc
t = 0.2 // uncut chip thickness in mm
alpha = 15 // rake angle in degrees
tc = 0.62 // chip thickness in mm
r = t/tc // chip thickness ratio
crc = 1/r // chip reduction coefficient
printf("\n Cutting ratio = %0.3f\n Chip reduction co-efficient = %0.1f" , r , crc)
alpha = alpha*%pi/180 // rake angle in radians
phi = atan(r*cos(alpha)/(1-r*sin(alpha))) // shear angle 
phi = phi*180/%pi // shear angle
printf("\n Shear angle = %0.2f degree" , phi) 
ss = cotg(phi*%pi/180) + tan((phi*%pi)/180-(alpha*%pi)/180) // shear strain
printf("\n shear strain = %0.3f" , ss)
// 'Answers vary due to round off error'
