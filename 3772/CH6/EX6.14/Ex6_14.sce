// Problem no 6.14,Page No.168

clc;clear;
close;

L=10 //m //Lenght of cantilever beam
P_1=20*10**3 //N //Load at free end
P_2=20*10**3 //N //Load at middle of beam
E=200*10**9 //Pa 
I=20000*10**-8 //m**4

//Calculations

//Taking moment at pt B we get
R_a=20*5*10**-1 //Force at pt A

//Now B.M at b=0,at C=-100,at A=-300 KN*m

//Now Area of B.M 
A_1=2**-1*5*100 //KN*m**2
A_2=5*100       //KN*m**2
A_3=2**-1*5*200 //KN*m**2

//Total Area of B.M diagram is given by A
A=A_1+A_2+A_3

theta=A*10**3*(E*I)**-1 //radian

x_1=2*3**-1*5
x_2=3*2**-1*5
x_3=5*3**-1*5
M_1=A_1*x_1
M_2=A_2*x_2
M_3=A_3*x_3

M=M_1+M_2+M_3 //Total moments of B.M about B

y_B=M*10**3*(E*I)**-1 //Deflection a tfree end

//REsult
printf("Slope of cantilever at free end is %.2f",theta);printf(" radian")
printf("\n Deflection of cantilever at free end is %.2f",y_B);printf(" m")
