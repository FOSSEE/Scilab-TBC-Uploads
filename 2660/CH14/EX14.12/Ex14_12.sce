clc
i = 0 // inclination angle in degree
alpha = 10 // orthogonal rake angle in degree
lemda = 75 // principal cutting edge angle in degree
alpha = alpha*%pi/180 // orthogonal rake angle in radian
lemda = lemda*%pi/180 // principal cutting edge angle in radian
alpha_b = atan(cos(lemda)*tan(alpha)+sin(lemda)*tan(i)) //back rake angle in radians
alpha_b = alpha_b*180/%pi // back rake angle in degree
alpha_s = atan(sin(lemda)*tan(alpha)-cos(lemda)*tan(i)) // side rake angle in radians
alpha_s = alpha_s*180/%pi // side rake angle in degree
printf("\n Back rake angle = %0.2f degree\n Side rake angle = %0.2f degree" , alpha_b,alpha_s)
