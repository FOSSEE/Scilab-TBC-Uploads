// Problem 8.9,Page no.212

clc;clear;
close;

L= 3 //m //Length of rod
d_1=25*10**-3 //m //Diameter of rod
n= 5 //no. of coils
sigma=70*10**6 //MPa  //instantaneous stress
E=70*10**9 //Pa 
G=80*10**9 //Pa
D=24*10**-2 //Spring diameter
R=d_1*2**-1 //spring radius
d=4*10**-2 //diameter of steel

//Calculations

dell_1=sigma*L*(E)**-1

//Let P be the equivalent applied Load which will produce same stress of 70 MPa
P=%pi*4**-1*(d_1)**2*E*10**-3 //KN

//deflection of the spring is given by
dell_2=P*64*R**3*n*(G*d**4)**-1 

//Now Loss of Potential Energy of the weight=strain energy stored in the rod and the spring
//Height measured from top of uncompressed  spring
h=((P*dell_1*2**-1+P*dell_2*2**-1)*(5.5*10**3)**-1-(dell_1+dell_2))*10**2

//Shear stress in the spring is given by
sigma_s=16*P*R*(%pi*d**3)**-1*10**-6 //MPa 

//Result
printf("Height measured from top of uncompressed  spring %.2f",h);printf(" cm")
printf("\n max shearing stress is %.2f",sigma_s);printf(" MPa")

// Answer is wrong in the textbook.
