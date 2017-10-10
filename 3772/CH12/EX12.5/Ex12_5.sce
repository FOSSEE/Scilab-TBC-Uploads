// Problem no 12.5,Page No.289

clc;clear;
close;

L=2 //m //Span of beam
w=10 //KN/m //u.d.l

//Calculations

//Downward deflection at B(of Beam AB) due to u.d.l of 10 KN/m is
Y_B_1=w*L**4*8**-1 

//Upward deflection at B due to reaction at C alone is
//Y_B_2=R_c*8*3**-1

//Net downward deflection of cantilever at AB at B
//Y_B=Y_B_1-Y_B_2

//Downward Deflection of Beam CD at C due to the reaction
//R_c=R_c*(3*E*I)**-1

//since both deflection at C and B are equal
R_c=20*(1*3**-1+8*3**-1)**-1

//Result
printf("Reaction at C is %.2f",R_c);printf(" KN")
