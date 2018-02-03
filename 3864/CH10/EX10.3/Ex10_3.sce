clear
//
//

//Initilization of Variables

f_x=40 //N/mm**2 //Internal Fliud Pressure
d1=200 //mm //Internal Diameter
r1=d1*2**-1 //mm //Radius
q=300 //N/mm**2 //Tensile stress

//Calculations

//From Lame's Equation we have,

//Hoop Stress
//f_x=b*(x**2)**-1+a    ..........................(1)

//Radial Pressure
//p_x=b*(x**2)**-1-a      .........................(2)

//the boundary conditions are
x=d1*2**-1 //mm 
//After sub values in equation 1 and further simplifying we get
//40=b*100**-1-a           ..........................(3)

//Max Principal stress theory
//q*(FOS)**-1=b*100**2+a           ..................(4)
//After sub values in above equation and further simplifying we get

//From Equation 3 and 4 we get
a=80*2**-1
//Sub value of a in equation 3 we get
b=(f_x+a)*100**2

//At outer edge where x=r_0 pressure is zero
r_0=(b*a**-1)**0.5 //mm

//thickness
t=r_0-r1 //mm

//Max shear stress theory
P1=b*(100**2)**-1+a //Max hoop stress
P2=-40 //pressure at int radius (since P2 is compressive)

//Max shear stress
q_max=(P1-P2)*2**-1

//According max shear theory the design condition is
//q_max=P_e*2**-1*(FOS)**-1
//After sub values in equation we get and further simplifying we get
//80=b*(100**2)**-1+a
//After sub values in equation 1 and 3 and further simplifying we get
b2=120*100**2*2**-1

//from equation(3)
a2=120*2**-1-a

//At outer radius r_0,radial pressure=0
r_02=(b2*a2**-1)**0.5

//thickness
t2=r_02-r1

//Result
printf("\n Thickness of metal by:Max Principal stress theory %0.2f  mm",t)
printf("\n                      :Max shear stress thoery %0.2f  mm",t2)
