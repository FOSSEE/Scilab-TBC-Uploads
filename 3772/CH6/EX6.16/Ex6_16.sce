// Problem no 6.16,Page No.171

clc;clear;
close;

E=200*10**9 //Pa
I=2500*10**-8 //m**4

//Calculations

//Taking moment about A we get
R_a=(30*5+30*1)*6**-1 //Reaction at pt A
R_b=60-R_a //Reaction at pt B

M_c=30*1 //B.M at C
M_d=30*1 //B.M at D
M_a=0 //B.M at a
M_b=0 //B.M at b

//For conjugate beam taking moment about B_dash
R_a_dash=(30*2**-1*(5+1*3**-1)+30*4*3+30*2*3**-1*2**-1)*6**-1
R_b_dash=150-R_a_dash

y_e=1*(E*I)**-1*(R_a_dash*3-30*2*1-2**-1*1*30*(2+1*3**-1))*1000

//Result
printf("Deflection at the centre is %.2f",y_e);printf(" m")
