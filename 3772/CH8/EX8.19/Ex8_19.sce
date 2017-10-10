// Problem 8.19,Page no.219

clc;clear;
close;

d=6 //mm //Diameter of steel wire
n=1 //number of turns
D=6.5 //cm //Mean of diameter
G=80 //GPa //modulus of rigidity
P_1=150 //Load
p=1.5 //cm //%pitch of coil

//Calculation 

R=D*2**-1
//For one turn deflection is
dell=p-d*10**-1 //cm 

//dell=64*P*R**3*n*(G*d**4)**-1 
//Now, after simplifying further we get,
P=dell*10**-2*G*10**9*(d*10**-3)**4*(64*(R*10**-2)**3*n)**-1 //N //Axial Load

dell_2=dell*8 //cm //Total Displacement //Notification has been changed
U=P*dell_2*10**-2*2**-1 //N-m //Strain Energy

//Potential Energy given by 150N Load is
//U=150*(h+0.072)

//After simplifying above equation we get
h=(U*P_1**-1-0.072)*10**2 //cm //Height from which 150 N load falls

//Result
printf("Axial Load is %.2f",P);printf(" N")
printf("\n Height from which 150 N load falls is %.2f",h);printf(" cm" )
