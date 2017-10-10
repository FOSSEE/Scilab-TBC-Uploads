// Problem 3.8,Page no.58

clc;clear;
close;

//R_a+R_c=25 //KN //R_a,R_b are reactions at supports A and C respectively
L_ab=2 //m
L_bc=3 //m

//Calculation

//From F.B.D,we get
//dell_L_AB=(R_a*L_AB)*(A*E)**-1 //Elongation of portion AB
//dell_L_BC=(R_c*L_BC)*(A*E)**-1 //Compression of portion BC

//After simplifying above equations we get,
//R_a=(1.5)*R_c //KN
//R_a+R_c=25 //KN
//Solving the above simultaneous equations using matrix method
A=[1 -1.5;1 1]  //Here the coefficients of the first equations of unknowns are setup
B=[0;25] //Here the RHS of both equations are setup
C=A**-1*B

//print C[0] //Prints the first element in the vector C
//print C[1] //Prints the second element in the vector C

//Result
printf("The reaction at support A is %.2f kN",C(1))
printf("\n The reaction at support C is %.2f kN",C(2))
