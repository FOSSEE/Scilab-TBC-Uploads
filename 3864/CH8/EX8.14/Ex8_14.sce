clear
//
//

//Initilization of Variables

d_o=300 //mm //Outside diameter 
d1=180 //mm //Internal Diameter
p=12 //N/mm**2 //internal Fluid pressure
p_o=6 //N/mm**2 //External Pressure
r_o=150 //mm //Outside Diameter
r=90 //mm //Internal Diameter


//Calculations

//From Lame's Equation we have
//p_x=b*(x**2)**-1-a       ..........................(1)
//F_x=b*(x**2)**-1+a      ...........................(2)

//At 
x=90 //N/mm**2 
r1=90 //N/mm**2 
p=42 //N/mm**2
//Sub in equation 1 we get
//42=b*(90**2)**-1-a       ..............................(3)

//At 
p2=6 //N/mm**2
//sub in equation 1 we get
//6=b*(150**2)**-1-a   ..............................(4)

//From equations 3 and 4  weget
//36=b*(90**2)**-1-b2(150**2)**-1
//After further simplifying we get
b=36*90**2*150**2*(150**2-90**2)**-1

//Sub value of b in equation 4 we get
a=b*(150**2)**-1-p_o

//At 
F_x=b*(x**2)**-1+a //N/mm**2

//At 
x2=150 //mm 
r=150 //mm 

F_x2=b*(x2**2)**-1+a  //N/mm**2

//Now if External pressure is doubled i.e p_o2=12 //N/mm**2 We have
p_o2=12 //N/mm**2
//sub in equation 4 we get
//12=b2*(150**2)**-1-a2                    ..........................(5)

//Max Hoop stress is to be 70.5 //N/mm**2,which occurs at x=r1=90 //mm
//Sub in equation 4 we get
//70.5=b*(90**2)**-1+a2           ................................(6)

//Adding equation 5 and 6
//82.5=b2*(150**2)**-1+b*(90**2)**-1
//After furhter simplifying we get
b2=82.5*150**2*90**2*(150**2+90**2)**-1

//Sub in equation 5 we get
a2=b2*(150**2)**-1-12 

//If p_i is the internal pressure required then from Lame's theorem
p_i=b2*(r1**2)**-1-a2

//Result
printf("\n Stresses int the material are:F_x %0.2f  N/mm**2",F_x)
printf("\n                              :F_x2 %0.2f  N/mm**2",F_x2)
printf("\n Internal Pressure that can be maintained is %0.2f  N/mm**2",p_i)
