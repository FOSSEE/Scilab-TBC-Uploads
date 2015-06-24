clc
//Initialization of variables
ri=0.133 //in
ro=0.168 //in
omega=300000 //rev/min
ri=ri/12 //ft
ro=ro/12 //ft
rm=1/2*(ri+ro)
omega=omega/60*2*%pi //rev/s
U=omega*rm
// Wsh=-U1*Vth1 ;  Vth1=2U 
Wsh=-2*U^2
printf('Shaft energy per unit mass of air mass flowing through turbine = %d ft.lb/slug',Wsh)
