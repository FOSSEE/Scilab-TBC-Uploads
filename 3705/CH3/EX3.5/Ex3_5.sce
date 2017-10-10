
clear//

//Variable Declaration
L=6 //Length of the tube in ft
t=3*8**-1 //Constant wall thickness in inches
G=12*10**6 //Bulk modulus of the tube in psi
w1=6 //Width on the top in inches
w2=4 //Width at the bottom in inches
h=5 //Height in inches
theta=0.5 //Angle of twist in radians

//Calculations
//Part(1)
Ao=(w1+w2)*2**-1*h //Area enclosed by the median line in sq.in
S=w1+w2+2*(sqrt(1**2+h**2)) //Length of the median line in inches
//Using the torsional stifness formula we get
k=4*G*Ao**2*t*(L*12*S)**-1*(%pi*180**-1) //tortional Stiffness  in lb.in/rad

//Part(2)
T=k*theta //Torque required to produce an angle of twist of theta in lb.in
q=T*(2*Ao)**-1 //Shear flow in lb/in
tau=q/t //Shear stress in the wall in psi


//Result 
printf("\n Part(1) results")
printf("\n Torsional stiffness is %0.0f lb.in/deg",k)
printf("\n Part(2) results")
printf("\n The shear stress in the wall is %0.0f psi",tau)
