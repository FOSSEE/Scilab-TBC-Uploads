clc
alphab = 8 // back rake in degree
alphas = 4 // side rake in degree
cs = 15 // side cutting edge angle in degree
lemda = 90 - cs // approach angle in degree
alphab = alphab*%pi/180 // back rake in radian
alphas = alphas*%pi/180 // side rake in radian
cs = cs*%pi/180 // side cutting edge angle in radian
lemda = lemda*%pi/180 // approach angle in radian
alpha = atan(tan(alphas)*sin(lemda)+tan(alphab)*cos(lemda)) // orthogonal rake angle in radian
alpha = alpha*180/%pi // orthogonal rake angle in degree
i = atan(sin(lemda)*tan(alphab)-cos(lemda)*tan(alphas)) // inclnation angle in radian
i = i*180/%pi // inclnation angle in degree
printf("\n Othogonal rake angle = %0.2f degree\n Inclination angle = %0.1f degree" , alpha , i)
