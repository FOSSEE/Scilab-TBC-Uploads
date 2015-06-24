clc;funcprot(0);//Example 2.7
//Initilisation of Variables
r1=0.01;.......//radius of copper wire in m
ho=50;....//convectional heat transfer coefficient in kJ/m^2*hr K
K=0.9;..//thermal conductivity of plastic material in W/m*K
t=5;....//thickness of copper wire in mm
//Calculations
rc=K/ho;........//Critical radius of insulation in m
//Q1=(T1-T2)*(2*%pi*r1*ho);...........//Heat transfer without insulation degrees celcius/W
//Q2=(T1-T2)/((2*%pi*r2*ho)+((1/2*%pi*K*L)*log(r2/r1)));
//Q2=Q1;..........//Heat transfer through insulated wire degrees celcius/W
//By calculation we can get
//log(r2/r1)=(K/(ho*r1))*(1-r1/r2);
//by trail & error method 
r2=37;...........//Outer radius of insulation
disp(r2,"Outer radius of insulation:")
