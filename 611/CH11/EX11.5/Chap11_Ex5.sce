// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-11,Example 5,Page 386
//Title:Composition of the liquid and vapor streams leaving the flash unit
//================================================================================================================
clear 
clc

//INPUT
//For convenience, n-pentane is taken as 1 , n-hexane as 2, and n-heptane as 3
P=200;//pressure at which the flash vaporizer is maintained in kPa
T=90;//temperature at which the flash vaporizer is maintained in degree celsius
zf1=0.3//mole fraction of n-pentane in feed stream (no unit)
zf2=0.3//mole fraction of n-hexane in feed stream (no unit)
zf3=0.4//mole fraction of n-heptane in feed stream (no unit)
antoine_const_pentane=[6.87632;1075.780;233.205];//Antoine's constants for n-pentane from Table A.7
antoine_const_hexane=[6.91058;1189.640;226.280];//Antoine's constants for n-hexane from Table A.7
antoine_const_heptane=[6.89386;1264.370;216.640];//Antoine's constants for n-heptane from Table A.7

//CALCULATION

//The form of the Antoine's equation used is logP=A-(B/(t+C)), where P is in Torr and t is in degree celsius
P1_s=10^(antoine_const_pentane(1,:)-(antoine_const_pentane(2,:)/(T+antoine_const_pentane(3,:))));//calculation of saturation pressure of n-pentane at T in Torr
P1_s=P1_s*133.322*10^-3;//conversion from Torr to kPa
P2_s=10^(antoine_const_hexane(1,:)-(antoine_const_hexane(2,:)/(T+antoine_const_hexane(3,:))));//calculation of saturation pressure of n-hexane at T in Torr
P2_s=P2_s*133.322*10^-3;//conversion from Torr to kPa
P3_s=10^(antoine_const_heptane(1,:)-(antoine_const_heptane(2,:)/(T+antoine_const_heptane(3,:))));//calculation of saturation pressure of n-heptane at T in Torr
P3_s=P3_s*133.322*10^-3;//conversion from Torr to kPa
K1=P1_s/P;//calculation of K factor using Eq.(11.22) (no unit)
K2=P2_s/P;//calculation of K factor using Eq.(11.22) (no unit)
K3=P3_s/P;//calculation of K factor using Eq.(11.22) (no unit)
tol=1e-6;//tolerance limit for convergence of the system using fsolve
L_F_guess=0.1;//taking a guess value for the L/F ratio, where L is the mole number of liquid stream leaving the unit at T and P, and F is the mole number of feed stream
function[fn]=solver_func(L_F)
 fn=((zf1/((L_F)+((1-L_F)*K1)))+(zf2/((L_F)+((1-L_F)*K2)))+(zf3/((L_F)+((1-L_F)*K3))))-1.0;//Function defined for solving the system 
endfunction
[L_F]=fsolve(L_F_guess,solver_func,tol)//using inbuilt function fsolve for solving the system of equations
x1=(zf1/((L_F)+((1-L_F)*K1)));//calculation of mole fraction of n-pentane in liquid stream leaving the unit at T and P (no unit)
x2=(zf2/((L_F)+((1-L_F)*K2)));//calculation of mole fraction of n-hexane in liquid stream leaving the unit at T and P (no unit)
x3=(zf3/((L_F)+((1-L_F)*K3)));//calculation of mole fraction of n-heptane in liquid stream leaving the unit at T and P (no unit)
y1=K1*x1;//calculation of mole fraction of n-pentane in the vapour stream leaving the unit at T and P (no unit)
y2=K2*x2;//calculation of mole fraction of n-hexane in the vapour stream leaving the unit at T and P (no unit)
y3=K3*x3;//calculation of mole fraction of n-heptane in the vapour stream leaving the unit at T and P (no unit)
V_F=1-(L_F);//calculation of the fraction that has vaporized

//OUTPUT
mprintf('The composition of the liquid leaving the flash unit is : x1=%f \t\t x2=%f \t\t x3=%f\n',x1,x2,x3);
mprintf('The composition of the vapour leaving the flash unit is : y1=%f \t\t y2=%f \t\t y3=%f\n',y1,y2,y3);
mprintf('The fraction of feed that has vaporized in the unit=%f \n ',V_F);

//===============================================END OF PROGRAM===================================================



