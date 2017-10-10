
clear//

//Variable Declaration
Ga=4*10**6 //Bulk modulus of Aluminium in psi
Gs=12*10**6 //Bulk Modulus of Steel in psi
T=10**4 //Torque in lb.in
L1=3 //Length in ft of the Steel bar
L2=6 //Length in ft of the Aluminium bar
d1=3 //Diameter of the Aluminium bar in inches
d2=2 //Diameter of the Steel bar in inches

//Calculations
//Using Compatibility and equlibrium conditions
a=([[1,1;(L1*32)/(Gs*%pi*d2**4),-((L2*32)/(Ga*d1**4*%pi))]])
b=([T;0])
y=linsolve(a,b)

//Stresses
t_max_st=(16*-y(1))/(%pi*d2**3) //Max shear Stress in Steel in psi
t_max_al=(16*-y(2))/(%pi*d1**3) //Max shear stress in aluminium in psi

printf("\n The maximum values of Shear Stresses are as follows")
printf("\n %0.1f psi in Steel and  %0.1f psi in aluminium",(t_max_st),t_max_al)
