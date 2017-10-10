// Problem no 9.1,Page no.232

clc;clear;
close;

D=15 //cm //External Diameter
t=2 //cm //Thickness
L=6 //m //Length of cyclinder
E=80*10**9 //Pa
alpha=1*1600**-1 
sigma_c=550*10**6 //Pa //compressive stress

//Calculations

d=D-2*t //m //Internal Diameter
A=%pi*4**-1*(D**2-d**2)*10**-4 //m**2 //Areaof Tube
I=%pi*64**-1*(D**4-d**4)*10**-4 //m**4 //M.I of tube
k=(I*A**-1)**0.5 //m //Radius of Gyration

P_e=%pi**2*E*I*(L**2)**-1 //Euler's Load
P_R=sigma_c*A*(1+alpha*(L*k**-1)**2)**-1 //According to Rankine's Formula

//The Answer in Textbook is incorrect for P_R 

//Now again from Rankine's Formula
//As K=I*A**-1,so substituting in below equation
//Thus Stress calculated from Euler's Formula cannot exceed the yield stress of 550 MPa
L=(%pi**2*E*k**2*(550*10**6)**-1)**0.5*10**-2 //m //Length of cyclinder

//Result
printf("The Length of strut is %.2f",L);printf(" cm")
