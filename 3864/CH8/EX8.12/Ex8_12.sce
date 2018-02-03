clear
//
//

//Initilization of Variables

d_o=300 //mm //Outside diameter 
d2=200 //mm //Internal Diameter
p=12 //N/mm**2 //internal Fluid pressure
F_max=16 //N/mm**2 //Tensile stress
r_o=150 //mm //Outside Diameter
r2=100 //mm //Internal Diameter

//Calculations

//Let p_o be the External Pressure applied.
//From LLame's theorem
//p_x=b*(x**2)**-1-a   ..............(1)
//F_x=b*(x**2)**-1+a   ...........................(2)

//Now At
x=100 //mm
p_x=12 //N/mm**2
//sub in equation 1 we get
//12=b*(100**2)**-1-a    . ..................(3)

//The Max Hoop stress occurs at least value of x where
//16=b*(100**2)**-1+a      .......................(4)

//From Equations 1 and 2 we get
//28=b*(100**2)**-1+b*(100**2)**-1
//After furhter Simplifying we get
b=28*100**2*2**-1

//sub in equation 1 we get
a=-(12-(b*(100**2)**-1))

//Thus At
x2=150 //mm
p_o=b*(x2**2)**-1-a

//Result
printf("\n Minimum External applied is %0.2f  N/mm**2",p_o)
