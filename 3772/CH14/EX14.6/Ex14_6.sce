// Problem no 14.6,Page No.332

clc;clear;
close;
H= 4 //m //height of dam
a=1 //m //Top width
b=3 //m //bottom width
rho1=9810 //N/m**3 //weight of water
rho2=19620 //n/m**3 //Weight of mason

//Calculations

//Let L=1 m (length of dam)
L=1

//weight of dam
W=(a+b)*2**-1*L*H*rho2*10**-3

////Lateral thrust
P=rho1*H**2*L*2**-1*10**-3 

//Distance of Line of action from vertical base
x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1

//distance of pt where resultant cuts the base
x=P*W**-1*H*3**-1

//Eccentricity
e=x_bar+x-b*2**-1

//Stress at Pt B
sigma1=W*10**3*b**-1*(1-6*e*b**-1)

//stress at Pt C
sigma2=W*10**3*b**-1*(1+6*e*b**-1)

//Stresses at the base when resorvoir is empty

e2=x_bar-b*2**-1

//Minus sign indicates sigma_b>sigma_c

//Stress at C
sigma2_2=W*10**3*b**-1*(1+6*e2*b**-1)

//Stress at Pt B
sigma1_2=W*10**3*b**-1*(1-6*e2*b**-1)

//result
printf("When the Reservoir is full :sigma1 %.2f",sigma1);printf(" N/m**2")
printf("\n                            :sigma2 %.2f",sigma2);printf(" N/m**2")
printf("\n When the Reservoir is empty:sigma1_2 %.2f",sigma1_2);printf(" N/m**2")
printf("\n                            :sigma2_2 %.2f",sigma2_2);printf(" N/m**2")

//Answer is wrong in the textbook.//////
