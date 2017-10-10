// Problem no 12.1,Page No.286

clc;clear;
close;

L=6 //m //Length of Beam
L_1=4 //m //Length of Beam with udl Load
w=10 //KN/m //u.d.l

//Calculation

//Deflection of cantileverat C due to udl on AB
y_c=w*L_1**4*8**-1+w*L_1**3*6**-1*(L-L_1) 

//Deflection of cantileverat C due to prop reaction alone
//y_c_2=R_c*L**3*3**-1

//Since both Deflection are Equal
//y_c=y_c_2

R_c=y_c*(6**3)**-1*3 //Reaction at C

//Result
printf("The Reaction at End C is %.3f kN",R_c)
