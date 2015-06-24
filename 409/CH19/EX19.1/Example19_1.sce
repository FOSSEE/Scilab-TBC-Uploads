clear ;
clc;
// Example 19.1
printf('Example 19.1\n\n');
//Page No. 563
// Solution 
 
// Use phase rule to get degree of freedom(F) =  2-P+C 
// (a)
N1 = 1;
P1 = 1 ;// Number of phases present
C1 = 1 ;//Number of components present
F1 = 2-P1+C1 ;//Number of degree of freedom
printf('\n (a) Number of degree of freedom of pure benzene is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F1,F1);

// (b)
N2 = 1;
P2 = 2 ;// Number of phases present
C2 = 1 ;//Number of components present
F2 = 2-P2+C2 ;//Number of degree of freedom
printf('(b) Number of degree of freedom of a mixture of ice and water only is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F2,F2);

// (c)
N3 = 2;
P3 = 2 ;// Number of phases present
C3 = 2 ;//Number of components present
F3 = 2-P3+C3 ;//Number of degree of freedom
printf('(c) Number of degree of freedom of a mixture of liquid benzene,benzene vapour and helium gas is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F3,F3);

// (d)
N4 = 2;
P4 = 2 ;// Number of phases present
C4 = 2 ;//Number of components present
F4 = 2-P4+C4 ;//Number of degree of freedom
printf('(d) Number of degree of freedom of a mixture of salt and water designed to achieve a specific vapour pressure is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F4,F4);