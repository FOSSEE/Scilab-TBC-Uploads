// Problem no 9.8,Page no.239

clc;clear;
close;

D=0.038 //m //External diameter
d=0.035 //m //Internal diameter
P=20*10**3 //N //Load
E=210*10**9 //Pa 
e=0.002 //m //Eccentricity
L=1.5 //m //Lenght of tube

//Calculations

A=%pi*4**-1*(D**2-d**2) //m**2 column
I=%pi*64**-1*(D**4-d**4) //m**4 //M.I of column
m=(P*(E*I)**-1)**0.5 

//Let X=secmL*2**-1
X=(1*(cos(m*L*2**-1))**-1)
M=P*e*X //N-m //MAx Bending Moment
sigma_1=P*A**-1*10**-6 //Pa //Direct stress
sigma_2=M*0.019*I**-1*10**-6 //Pa //Bending stress

sigma_c_max=(sigma_1+sigma_2) //MPa //Max compressive stress

//Result
printf("The Max stress developed is %.2f",sigma_c_max);printf(" MPa")
