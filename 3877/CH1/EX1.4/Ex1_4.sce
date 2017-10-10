//Given
     N = 11 //The number of total links
     L = 4//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
clc
printf('The total number of links is %f \n',N)
printf(' The number of joints is %f \n',P1)
printf(' The number of degrees of freedom is %f \n',F)


