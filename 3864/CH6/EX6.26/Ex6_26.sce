clear
//
//

//Initilization of Variables

d1=100 //mm //Outer Diameter
d2=95 //mm //Inner Diameter
T=2*10**6 //N-mm //Torque

//Calculations

J=%pi*32**-1*(d1**4-d2**4) //mm**4 //Polar Modulus

//Shear stress
q_max=T*J**-1*d1*2**-1 //N/mm**2 

//Now theta*L**-1=T*(G*J)**-1
//After substituting values and further simplifying we get
//Let theta*L**-1=X
X=T*J**-1

//Now Treating it as very thin walled tube
d=(d1+d2)*2**-1 //mm

r=d*2**-1 
t=(d1-d2)*2**-1
q_max2=T*(2*%pi*r**2*t)**-1 //N/mm**2

X2=T*(2*%pi*r**3*t)**-1 

//Result
printf("\n When it is treated as hollow shaft:Max shear stress %0.2f  N/mm**2",q_max)
printf("\n                                   :Angle of Twist per unit Length %0.3f  ",X)
printf("\n When it is very thin Walled Tube  :Max shear stress %0.2f  N/mm**2",q_max2)
printf("\n                                   :Angle of twist per Unit Length %0.3f  ",X2)
