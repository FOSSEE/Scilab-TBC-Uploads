// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 6, Example 1")
//Oil of specific gravity 0.90 and dynamic viscosity (mu=0.1Pa*s) flows between two fixed plates kept 2*b=10mm apart,So b=5mm.
//The average velocity is Uav=1.60m/s
Uav=1.60;
mu=0.1;
b=0.005;// in metre
//Umax is maximum velocity
//Umax=(3/2)*Uav
disp("Umax in m/s is")
Umax=(3/2)*Uav
//The shear stress at the plate is given by T=2*µ*(Umax/b)
disp("The shear stress T in N/m^2")
T=2*mu*(Umax/b) 
//The shear sress at a distance from plate is given by t=y*(dp/dx)
//(dp/dx)=X=-3*mu*(Uav/b^2)
disp("(dp/dx) in N/m^3 is")
X=-3*mu*(Uav/b^2)
//Taking modulus of X by multipying it with negative sign. 
disp("The Shear stress at a distance of 0.002m from the lower plate in N/m^2")
y=b-0.002;
t=y*(X)//NOTE:Answer given in the book is incorrect (Calculation mistake)
disp("The shear stress at a distance of 0.002m from the upper plate in N/m^2")
t=-y*(X)//NOTE:Answer given in the book is incorrect (Calculation mistake)
disp("The opposite signs in t represents the opposite directions.The plus sign is in the direction of flow and the minus sign is in the direction opposite to the flow ")
//deltaP is the pressure drop
disp("The pressure drop over a distance of 2m in N/m^2 is")
//Since pressure drop is considered at a distance of 2m so L=2m
L=2;
deltaP=(-X)*L
























