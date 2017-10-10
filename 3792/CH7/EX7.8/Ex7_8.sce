// SAMPLE PROBLEM 7/8
clc;funcprot(0);
// Given data
m=1000;// The mass of turbine rotor in kg
k=0.200;// m
N=500;// rev/min
rho=400;// The radius of gyration in m
v=25*0.514;// m/s
d_AG=0.6;// m
d_GB=0.9;// m
d_AB=d_AG+d_GB;// m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
// The moment principle from statics easily gives
W=m*g;// N
R_1=(m*g)*d_AG;// N
R_2=W-R_1;// N
omega=(v/rho);// rad/s
I=m*k^2;// kg-m^2
deltaR=(I*omega*((2*%pi*N)/60))/d_AB;
R_A=R_1-deltaR;// N
R_B=R_2+deltaR;// N
printf("\nThe vertical components of the bearing reactions at A and B,R_A=%4.0f N and R_B=%4.0f N",R_A,R_B);
// The answer provided in the textbook is wrong
