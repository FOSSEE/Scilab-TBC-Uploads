clear ;
clc;
// Example 19.2
printf('Example 19.2\n\n');
//Page No.564
// Solution 
 
// Use phase rule to get degree of freedom(F) =  2-P+C 
// (a)
N1 = 5;
P1 = 1; // Number of phases present,here 1 gas 
C1 = 3 ;//Number of  independent components present,here 3 because 3 elements(C,O and H)
F1 = 2-P1+C1 ;//Number of degree of freedom
printf('\n (a) Number of degree of gas composed of CO,CO2,H2,H2O and CH4 is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F1,F1);

// (b)
N2 = 4;
P2 = 4 ;// Number of phases present,here 3 different solid phases and 1 gas phase
C2 = 3 ;//Number of components present, here 3 because 3 elements(Zn,O and C) ,you can also use method explained in Appendix L1
F2 = 2-P2+C2 ;//Number of degree of freedom
printf('(b) Number of degree of freedom of a mixture of ZnO(s), C(s) ,CO(g) and Zn(s)  is %i. Therefore %i additional intensive variables must be specified to fix the system.\n ',F2,F2);