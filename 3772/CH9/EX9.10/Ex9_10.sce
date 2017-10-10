// Problem no 9.10,Page no.240

clc;clear;
close;

L=3 //m //Length of strut
b=0.04 //m //Width of rectangle
d=0.10 //m //Depth if rectangle
P=100*10**3 //N //Axial thrust
w=10*10**3 //N //Uniformly Distributed Load
E=210*10**9 //Pa 

//Calculations

A=b*d //m**2 //Area of strut
I=b*d**3*12**-1 //m**4 //M.I 
m=(P*(E*I)**-1)**0.5 

//Let X=secmL*2**-1
X=(1*(cos(m*L*2**-1))**-1)

M=w*E*I*P**-1*(X-1)*3**-1 //N*m //Max Bending Moment
sigma_1=P*A**-1 //Pa //Direct stress
sigma_2=M*0.05*I**-1 //Pa //Bending stress

sigma_c_max=sigma_1+sigma_2 //Max compressive stress

//If the Eccentricity of thrust is neglected
M_2=w*L**2*(3*8)**-1 //Max Bending moment
sigma_2_2=M_2*0.05*I**-1 //Pa //Bending stress

sigma_c_max_2=(sigma_1+sigma_2_2)*10**-6 //Pa

//Let Y=Percentage error
Y=((sigma_c_max-sigma_c_max_2*10**6)*sigma_c_max**-1)*100

//Result
printf("Max stress induced is %.2f",sigma_c_max_2);printf(" MPa")
printf("\n The Percentage Error is %.3f %%",Y)
