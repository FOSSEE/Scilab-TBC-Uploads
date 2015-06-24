clc
clear
//input data
Q1=120//Discharge of each of the multi stage pump in parallel in first case in m^3/s
Q2=450//Discharge of the multi stage pump in second case in m^3/s
H1=16//Head of each stage in first case in m
D1=0.15//Diameter of impeller in first case in m
H=140//Total head developed by all pumps in second case in m
N1=1500//Running speed of the pump in rpm in first case
N2=1200//Running speed of the pump in rpm in second case
//calculations
H2=H1*((Q2/Q1)*((N2/N1)^2))^(4/6)//Head of each stage in second case in m
n=H/H2//Number of stages in second case 
D2=D1*(((N1/N2)^(2))*(H2/H1))^(1/2)//Diameter of impeller in second case in m

//output
printf('(a)number of stages required is %3.f\n(b)Diameter of impeller in the second case is %3.2f m',n,D2)
