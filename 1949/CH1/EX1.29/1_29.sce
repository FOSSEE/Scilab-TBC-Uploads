//Chapter-1,Example 1_29,Page 1-50
clc()

//As Dn^2=4*n*R*lam.
//thus, Dn is directly proportional to sqaure root of n
D5=sqrt(5)     //D5 is directly proportional to sqaure root of 5
D4=sqrt(4)     //D4 is directly proportional to sqaure root of 4
k1=D5-D4
printf('Separation between D5 and D4 is directly proportional to =%.3f \n',k1)

D80=sqrt(80)     //D80 is directly proportional to sqaure root of 80
D79=sqrt(79)     //D79 is directly proportional to sqaure root of 79
k2=D80-D79
printf(' Separation between D80 and D79 is directly proportional to =%.3f \n \n',k2)

printf(' Thus, (D80-D79) < (D5-D4).\n Hence proved.')
