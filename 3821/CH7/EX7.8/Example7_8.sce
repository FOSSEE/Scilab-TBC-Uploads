///Chapter No 7 Fluid Mechanics
////Example 7.8 Page No:118
/// Find Power required to maintain the speed of upper plate
//Input data
clc;
clear;
dy=1.5*10^-4;      //Two horizontal plates are placed in m
mu=0.12;            //Space between plates  Ns/m**2
A=2.5;              //Upper area is required to move in m**2
du=0.6;             //Speed rerlated to lower plate in m/s


////(1)Calculation
tau=mu*(du/dy);   //Shear stress N/m**2
F=tau*A;            //Force in N
P=F*du;             //Power required to maintain the speed of upper plate in W


//Output 
printf('Shear stress=%f N/m^2 \n ',tau);
printf('Force=%f N \n ',F);
printf('Power required to maintain the speed of upper plate=%f W \n ',P);
