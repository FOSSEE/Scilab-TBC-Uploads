//Refer to the figure 1.12
//Initialization of variables for fig. a
     Nb=4//The number of binary links
     Nt=4//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 4//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
clc
printf(' (a)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n The linkage has negative degree of freedom and thus is a superstructure.\n',F)
//Initialization of variables for fig. b
     Nb=4//The number of binary links
     Nt=4//The number of ternary links
     No=0//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 3//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
printf(' (b)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n The linkage has a constrained motion when one of the seven moving links is driven by an external source\n',F)
//Initialization of variables for fig. c
     Nb=7//The number of binary links
     Nt=2//The number of ternary links
     No=2//The number of other (quartenary etc.) links
     N = (Nb+Nt+No) //The number of total links
     L = 5//The number of loops
//calculation
     P1= (N+L-1)//The enumber of joints or pairs
     F = 3*(N-1)-(2*P1)//The number of degrees of freedom
//Result
printf(' (c)The total number of links is %f \n',N)
printf('The number of joints is %f \n',P1)
printf('The number of degrees of freedom is %f \n Therefore, the linkage is a structure\n',F)
