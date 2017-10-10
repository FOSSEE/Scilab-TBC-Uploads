clear
clc
//Example 11.7 WING AREA FOR AN AIRPLANE
T=-67+460; //temperature [°R]
R=1716; //[ft.lbf/slug.°R]
//1ft^2=144in^2
p=3.3*144; //pressure[lbf/ft^2]
rho=p/(R*T) //[slug/ft^3]
CL=0.2;
Vo=600; //[ft/s]
W=10000; //weight [lbf]
//for steady flight,
FL=W 
//Wing area
S=2*W/(rho*Vo^2*CL) //[ft^2]
b=54; //span of wing [ft]
CDi=CL^2/(%pi*(b^2/S)) //min.induced drag coefficient
//Induced drag
Di=(rho*Vo^2*CDi*S)/2 //[lbf]
printf("\nThe wing area = %.f ft^2 and the minimum induced drag = %.1f lbf.\n",S,Di)