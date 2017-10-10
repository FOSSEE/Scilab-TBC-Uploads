
clear//

//Variable Declaration
t=0.01 //Thickness of the shaft in m
p=2 //Internal Pressure in MPa
r=0.45 //Mean radius of the vessel in m
tw=50 //Working shear stress in MPa

//Calculation
sigma_x=(p*r)/(2*t) //Stress in MPa
sigma_y=(p*r)/t //Stress in MPa

R=100-67.5 //From the diagram in MPa
tau_xy=sqrt((R**2-(sigma_y-67.5)**2)) //Stress in MPa

J=2*%pi*r**3*t //Polar Moment of inertia in mm^4

T=1000*(tau_xy*J)/r //Maximum allowable Torque in kN.m

//Result
printf("\n The largest allowable Torque is %0.0f kN.m",T)
