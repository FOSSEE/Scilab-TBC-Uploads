clc 
// Given that
alpha_b = 6 // Back rake angle in Degree
alpha_s = 10 // Side rake angle in Degree
gama = 7 // Front clearance angle in Degree
gama_ = 7 // Side clearance angle in Degree
Shi = 10 // End cutting edge angle in Degree
shi = 30 // Side cutting edge angle in Degree
r= 0.5 // Nose radius in mm
// Sample Problem 11 on page no. 224
printf("\n # PROBLEM 4.11 # \n")
k = tand(alpha_b) * cosd(shi) - tand(alpha_s) * sind(shi)
printf("\n The value of k=%f,which is near to 0. Hence the case is close to orthogonal one.\n",k)
alpha= atand(((tand(alpha_b) * sind(shi) ) + (tand(alpha_s) * (cosd(shi))))/ (sqrt(1+((tand(alpha_b)*cosd(shi)) - (tand(alpha_s)*sind(shi)))^(2))))
printf(" \n Normal rake angle = %f°.",alpha)
