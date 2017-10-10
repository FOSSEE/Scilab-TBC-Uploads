
clear//

//Variable Declaration
P=20*10**3 //Power in W
f=2 //Frequency in Hz
t_max=40*10**6 //Maximum shear stress in Pa
G=83*10**9 //Bulk modulus in Pa
theta=(6*%pi)/180 //Angle of twist in radians
L=3 //Length in m

//Calculations
//Strength condition
T=P/(2*%pi*f) //Torque in N.m
d1=((16*T)/(%pi*t_max))**0.333 //Max allowable diameter in mm

//Applying torque-twist relationship
d2=((32*T*L)/(G*theta*%pi))**0.25 //Diameter in mm

d=max(d1,d2)

printf("\n To satisfy both strength and rigidity conditions d= %0.1f mm",d*1000)
