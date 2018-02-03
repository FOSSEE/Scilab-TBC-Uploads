clear
//
//

//Initilization of Variables

d1=160 //mm //Internal Diameter 
r1=80 //mm //External Diameter
p1=40 //N/mm**2 //Internal Diameter
P_max=120 //N/mm**2 //Allowable stress

//Calculations

//From Lame's Equation we have
//p_x=b*(x**2)**-1-a       ..........................(1)
//F_x=b*(x**2)**-1+a      ...........................(2)

//At 
//Sub in equation 1 we get
//120=b*(80**2)**-1+a     ........................(3)

//The hoop tension at inner edge is max stress
//Hence
//120=b*(80**2)**-1+a    .............................(4)

//From Equation 3 and 4 we get
b=160*80**2*2**-1 

//Sub in equation 3 we get
a=-(40-(b*(80**2)**-1))

//Let External radius be r_o.Since at External Surface is Zero,we get
//0=b*(r_o)**-1-a
//After Further simplifying we get
r_o=(b*a**-1)**0.5

//Thickness of Cyclinder 
t=r_o-r1 //mm

//Result
printf("\n Thickness Required is %0.2f  mm",t)
