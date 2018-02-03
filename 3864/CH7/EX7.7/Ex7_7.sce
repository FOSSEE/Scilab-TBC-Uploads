clear
//
//
//

//Initilization of Variables

//stresses
p_x=60 //N/mm**2
p_y=-40 //N/mm**2

q=10 //N/mm**2 //shear stress

//Calculations

//Principal Stresses
p1=(p_x+p_y)*2**-1+(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
p2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Max shear stress
q_max=(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Inclination of principal stress to plane
theta=atan(2*q*(p_x-p_y)**-1)*(180*%pi**-1)//Degrees
theta2=(theta)*2**-1 //degrees

theta3=(theta+180)*2**-1  //degrees

//Result
printf("\n Principal Stresses are: %0.2f  N/mm**2",p1)
printf("\n                       : %0.2f  N/mm**2",p2)
printf("\n Max shear stresses %0.2f  N/mm**2",q_max)
