clear
//
//

//Initilization of Variables

do=200 //mm //Inner Diameter
r_o=100 //mm //Inner radius
d1=300 //mm //outer diameter
r1=150 //mm //Outer radius
d2=250 //mm //Junction Diameter
r2=125 //mm //Junction radius
E=2*10**5 //N/mm**2 //Modulus of Elasticity
p=30 //N/mm**2 //radial pressure

//Calculations

//from Lame's Equation we get
//p_x=b*(x**2)**-1-a       ..........................(1)
//F_x=b*(x**2)**-1+a      ...........................(2)

//Then from Boundary condition 
//p_x=0 at x=100 //mm
//0=b1*(100**2)**-1-a1     .....................(3)

//p_x2=30 //N/mm**2 at x2=125 //mm
//30=b1*(125**2)**-1-a1    ................................(4)

//From equation 3 and 4 we get
b1=30*125**2*100**2*(100**2-125**2)**-1

//From Equation 3 we get
a1=b1*(100**2)**-1

//therefore Hoop stress in inner cyclinder at junction
F_2_1=b1*(125**2)**-1+a1 //N/mm**2

//Outer Cyclinder
//p_x=b*(x**2)**-1-a       ..........................(5)
//F_x=b*(x**2)**-1+a      ...........................(6)

//Now at x=125 //mm
//p_x3=30 //N/mm**2
//30=b2*(125**2)**-1-a2     ..................................(7)

//At x=150 //mm
//p_x4=0
//0=b2*(150**2)**-1-a2     ...................................(8)

//From equations 7 and 8
b2=30*150**2*125**2*(150**2-125**2)**-1

//From eqauation 8 we get
a2=b2*(150**2)**-1

//Hoop stress at junction 
F_2_0=b2*(125**2)**-1+a2 //N/mm**2

rho_r=(F_2_0-F_2_1)*E**-1*r2

//Result
printf("\n Shrinkage Allowance is %0.3f  mm",rho_r)
