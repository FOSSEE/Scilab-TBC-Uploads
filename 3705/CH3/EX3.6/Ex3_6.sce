
clear//

//Variable Declaration
L=1.2 //Length of the tube in m
tau=40*10**6 //MAximum shear stress  in MPa
t=0.002 //Thickness in m
r=0.025 //Radius of the semicircle in m
G=28*10**9 //Bulk Modulus in Pa
t1=2 //Thickness in mm
t2=3 //thickness in mm

//Calculations
//Part(1)
q=tau*t //Shear flow causing the stress in N/m
Ao=%pi*r**2*0.5 //Area of the semi-circle in m^2
T=2*Ao*q //Torque causing the shear stress in N.m

//Part(2)
//After computing the median lines integration we get
S=(%pi*25*t1**-1)+(2*25*t2**-1) //Length of median line 
theta_r=T*L*S*(4*G*Ao**2)**-1 //Angle of twist in radians
theta=theta_r*(180*%pi**-1) //Angle of twist in degrees

//Result
printf("\n Result for part(1)")
printf("\n The torque causing the stress of 40MPa is %0.2f N.m",T)
printf("\n Result for part (2)")
printf("\n The angle of twist is %0.1f degrees",theta)
