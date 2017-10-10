
clear//

//Variable Declaration
L=1.5 //Length of the shaft in m
t_B=200 //Torque per unit length in N.m/m
d=0.025 //Diameter of the shaft in m
G=80*10**9 //Bulk Modulus for steel in Pa


//Calculations
//Part(1)
//After carrying out the variable integration
T_A=0.5*t_B*L //Torque about point A in N.m
//Using equation of max stress
tau_Max=(16*T_A)*(%pi*d**3)**-1 //Maximum stress in the shaft in Pa

//Part(2)
J=(%pi*d**4)*32**-1 //Polar moment of inertia in m^4
//After carrying out the computation for angle of twist we get
theta_r=(t_B*L**2)*(3*G*J)**-1 //Angle of twist in radians
theta=theta_r*(180*%pi**-1) //Angle of twist in degrees

//Result
printf("\n Result for part (1)")
printf("\n Maximum Shear Stress in the shaft is %0.1f MPa",tau_Max/10**6)
printf("\n Result for part (2)")
printf("\n The angle of twist in the shaft is %0.2f degrees",theta)
