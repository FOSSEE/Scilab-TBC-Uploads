// Problem no 9.9,Page no.239

clc;clear;
close;

L=5 //m //Length of column
D=0.2 //m //External Diameter
d=0.14 //m //Internal diameter
P=200*10**3 //N //Load
e=0.015 //m //Eccentricity
E=95 *10**9 //Pa 

//Calculations

L_2=L*2**-1 //m //half length of column
A=%pi*4**-1*(D**2-d**2) //m**2 column
I=%pi*64**-1*(D**4-d**4) //m**4 //M.I of column
m=(P*(E*I)**-1)**0.5 

//Let X=secmL*2**-1
X=(1*(cos(m*L_2*2**-1))**-1)
M=P*e*X //N-m //MAx Bending Moment
sigma_1=P*A**-1*10**-6 //Pa //Direct stress
sigma_2=M*0.1*I**-1*10**-6 //Pa //Bending stress

sigma_c_max=(sigma_1+sigma_2) //MPa //Max compressive stress

printf("The Max stress developed is %.2f",sigma_c_max);printf(" MPa")
