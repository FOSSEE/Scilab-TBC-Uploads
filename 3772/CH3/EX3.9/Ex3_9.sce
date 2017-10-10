// Problem 3.9,Page no.59

clc;clear;
close;

//P is the force acting on the bar BC compressive in nature and force on AB is (100-P) Tensile in nature
E=200*10*9 //N
A_1=3*10**-4 //cm**2 //Area of AB
A_2=4*10**-4 //cm**2 //Area of BC
L=1.5 //cm //Length of bar

//Calculations

//The total elongation of bar
//(((100-P)*10**3*1.5)*(3*10**-4*E)**-1)-((P*10**3*1.5)*(4*10**-4*E)**-1)=0 

//The total elongation of bar is limited to 1
//(25-0.4375*P)*10**-4=1*10**-3

//After simplifying above equation we get,
P=-(10-25)*0.4375**-1 //KN //Total elongation of bar
F_AB=100-P //KN //force in AB
F_BC=P //KN //Force in BC
sigma_AB=(((F_AB)*(3*10**-4)**-1)*10**-3) //KN //Stress in AB
sigma_BC=((F_BC)*(4*10**-4)**-1*10**-3) //KN //Stress in Bc


//Result
printf("F_AB = %.2f kN",F_AB)
printf("\n F_BC = %.2f kN",F_BC)
printf("\n sigma_AB = %.2f kN",sigma_AB)
printf("\n sigma_BC = %.2f kN",sigma_BC)
