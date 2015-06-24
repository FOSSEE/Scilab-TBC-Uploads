clc
clear
//Input data
d=0.08;//The diameter of bore in m
L=0.075;//The length of the stroke in m
l=0.152;//The connecting rod length in m
h=0.062;//Skirt length of the piston in m
Fr=8000;//Compressive force in the connecting rod in N
p=3000;//The pressure in the cylinder kPa
y=0.004*10^-3;//The clearence between piston and cylinder wall in m
U=0.006;//The dynamic viscosity of the lubricating oil in pa.s
u=8.2;//The piston speed in m/s
pi=3.141;//Mathematical constant of pi

//Calculations
ts=(U*u)/y;//The shear stress in N/m^2
A=pi*d*h;//Contact area between the piston and the cylinder in m^2
Ff=ts*A;//Friction force on the piston inN
r=L/2;//Crank length in m
A=atan(r/l);//The angle made by the crank in radians
Ft=Fr*sin(A);//The side thrust in N
//Output 
printf(' The friction force on the piston = %3.0f N \n  The thrust force on the cylinder wall = %3.0f N',Ff,Ft)
