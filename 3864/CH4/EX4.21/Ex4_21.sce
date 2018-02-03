clear
//

//Initilization of Variables

//Wooden Beam

b=150 //mm //width
d=250 //mm //Depth

L=5000 //mm //span
m=11.2 //N/mm**2 //Max Bending stress
sigma=0.7 //N/mm**2 //Max shear stress

//Calculations

//Let 'a' be the distance from left support
//Max shear force
//F=R_A=W*(L-a)*L**-1 

//Max Moment
//M=W*(L-a)*a*L**-1

//But M=sigma*Z
//W*(L-a)*a*L**-1=m*1*6**-1*b*d**2   .....................(1)

//In Rectangular Section MAx stress is 1.5 times Avg shear stress
F=sigma*b*d*1.5**-1

//W*(L-a)*L**-1=F                     .....................(2)

//Dividing Equation 1 nad 2 we get
a=m*6**-1*b*d**2*1.5*(sigma*b*d)**-1

//Sub above value in equation 2 we get
W=(L-a)**-1*L*F*10**-3 //KN  

//Result
printf("\n Load is %0.2f  KN",W)
printf("\n Distance from Left support is %0.2f  mm",a)
