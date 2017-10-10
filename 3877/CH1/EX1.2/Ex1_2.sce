//Refer to the figure 1.12
//Initialization of variables for fig. a
     Nb=3//The number of binary links
     Nt=2//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 2//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
clc
printf(' (a)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n The linkage has zero degree of freedom and thus one or more link should be added to the linkage to make it a mechanism.\n',F)
//Initialization of variables for fig. b
     Nb=7//The number of binary links
     Nt=3//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 4//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
printf(' (b)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n With four loops and 1 degree of freedom the number of links should be madee 10 and number of joints be 13 \n',F)
//Initialization of variables for fig. c
     Nb=3//The number of binary links
     Nt=5//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 4//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
printf(' (c)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n  It is a superstructure  With 4 loops the number of links should be 10 for 1 degree of freedom \n',F)
//Initialization of variables for fig. d
     Nb=12//The number of binary links
     Nt=0//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 5//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
printf(' (d)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n  It is a mechanism with 1 degree of freedom \n',F)
//Initialization of variables for fig. e
     N = 5//The number of total links
     P2 = 1//The number of pairs with 2 degrees of freedom
     L = 4//The number of loops
//calculation
     P1= 5//The enumber of joints or pairs with one degree of freedom
     F = 3*(N-1)-(2*P1)-(P2)//The number of degrees of freedom
//Result
printf(' (c)The total number of links is %f \n',N)
printf('The number of joints with 1 dof is %f \n',P1)
printf('The number of joints with 2 dof is %f \n', P2)
printf('The number of degrees of freedom is %f \n  It is a mechanism with 1 degree of freedom \n',F)


