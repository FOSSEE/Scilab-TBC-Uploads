clear
//
//

//Initilization of Variables

d=600 //mm //Diameter of sherical shell
t=10 //mm //Thickness
f=80 //N/mm**2 //Permissible stress
rho=0.75 //Efficiency joint

//Calculations

//Max Pressure
p=f*4*t*rho*d**-1 //N/mm**2

//Result
printf("\n Max Pressure is %0.2f  N/mm**2",p)
