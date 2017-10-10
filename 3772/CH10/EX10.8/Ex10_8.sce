// Problem no 10.8,Page No.262

clc;clear;
close;

F_c=20 //KN //Force at C
F_d=5  //KN //Force at D
F_e=15 //KN //Force at E
F_f=10 //KN //Force at F
L_CD=3.6 //m //Length of CD
L_DE=3.6 //m //Length of DE
L_EF=4.8 //m //Length of EF
L_AD=3.6;L_BE=3.6 //m //Length of AD & BE

//Calculations

//Let R_A and R_B be the reactions at pts at A and B

//Taking  moment at A
R_B=-(-F_f*(L_DE+L_EF)+F_c*L_CD-F_e*L_DE)*(L_DE)**-1
R_A=50-R_B

//Considering section 1-1 through members AB,DB,DE and taking F.B.D of left side of section 1-1

//Taking moment at B
sigma_1=(F_d*L_DE+F_c*(L_CD+L_DE)-R_A*L_DE)*L_AD**-1 //Force i member DE

//Taking moment @ D
sigma_3=(F_c*L_CD)*L_AD**-1 //KN //force in member AB


//Consider triangle DBE
theta=atan(L_BE*L_DE**-1)*(180*%pi**-1)

//Taking moment @ A
sigma_2=(-sigma_1*L_AD+F_c*L_CD)*(L_AD*cos(theta*%pi*180**-1))**-1 //Force in member F_DE

//Now considering section 2-2 passing through members AB,AD,CD and taking left hand F.B.D
 
//Taking moment @C
sigma_5=(R_A*L_CD-sigma_3*L_AD)*L_CD**-1    //Force in member AD

//Taking moment @A=0
sigma_4=F_c*L_CD*L_AD**-1 //Force in member CD


//Result
printf("Force in member CD is %.2f",sigma_4);printf(" KN(Compressive)")
printf("\n Force in member AD is %.2f",sigma_5);printf(" KN(Tensile)")
printf("\n Force in member BD is %.2f",sigma_2);printf(" KN(Compression)")
printf("\n Force in member AB is %.2f",sigma_1);printf(" KN(Tension)")

// Answer is wrong in the textbook.
