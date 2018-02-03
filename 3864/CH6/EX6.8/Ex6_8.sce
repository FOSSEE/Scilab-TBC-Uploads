clear
//
//

//Initilization of Variables

P=245*10**6 //N-mm/sec //Power transmitted
n=240 //rpm
q_s=40 //N/mm**2 //Shear stress
theta=%pi*180**-1 //radian //Angle of twist
L=1000 //mm //Length of shaft
G=80*10**3 //N/mm**2

//Tmax=1.5*T

//Calculations

T=P*60*(2*%pi*n)**-1 //N-mm //Torsional Moment
Tmax=1.5*T

//Now For Solid shaft
//J=%pi*32*d**4

//Now from the consideration of shear stress we get
//T*J**-1=q_s*(d*2**-1)**-1
//After substituting value in above Equation we get
//T=%pi*16**-1*d**3*q_s

//Designing For max Torque
d=(Tmax*16*(%pi*40)**-1)**0.33333 //mm //Diameter of shaft

//For max Angle of Twist
//Tmax*J**-1=G*theta*L**-1 
//After substituting value in above Equation we get
d2=(Tmax*32*180*L*(%pi**2*G)**-1)**0.25

//For Hollow Shaft

//d1_2=Outer Diameter
//d2_2=Inner Diameter

//d2_2=0.5*d1_2

// Polar modulus
//J=%pi*32**-1*(d1_2**4-d2_2**4)
//After substituting values we get
//J=0.092038*d1_2**4

//Now from the consideration of stress
//Tmax*J**-1=q_s*(d1_2*2**-1)**-1
//After substituting values and further simplifying we get
d1_2=(Tmax*(0.092038*2*q_s)**-1)**0.33333

//Now from the consideration of angle of twist
//Tmax*J**-1=G*theta*L**-1
//After substituting values and further simplifying we get
d1_3=(Tmax*180*L*(0.092038*G*%pi)**-1)**0.25

d2_2=0.5*d1_2

//result
printf("\n Diameter of shaft is:For solid shaft:d %0.2f  mm",d)
printf("\n                     :For Hollow shaft:d1_2 %0.3f  mm",d1_2)
printf("\n                     :                :d2_2 %0.3f  mm",d2_2)
