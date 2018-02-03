clear
//
//

//Initilization of Variables

d=750 //mm //Diameter of water supply pipes
h=50*10**3 //mm //Water head
sigma=20 //N/mm**2 //Permissible stress
rho=9810*10**-9 //N/mm**3

//Calculations

//Pressure of water
P=rho*h //N/mm**2

//Stress
//sigma=p*d*(2*t)**-1
//After further simplifying
t=P*d*(2*sigma)**-1 //mm 

//Result
printf("\n Thickness of seamless pipe is %0.3f  mm",t)
