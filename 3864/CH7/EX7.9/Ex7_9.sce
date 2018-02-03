clear
//
//
//

//Initilization of Variables

//stresses
p_x=-40 //N/mm**2
p_y=80 //N/mm**2

q=48 //N/mm**2 //shear stress

//Calculations

//Max shear stress
q_max=((((p_x-p_y)*2**-1)**2)+q**2)**0.5 //N/mm**2

//Inclination of principal stress to plane
theta=atan(2*q*(p_x-p_y)**-1)*(180*%pi**-1)//Degrees
theta2=(theta)*2**-1 //degrees

theta3=(theta+180)*2**-1  //degrees

//Normal Corresponding stress
p_n=(p_x+p_y)*2**-1+(p_x-p_y)*2**-1*cos(2*(theta2+45)*%pi*180**-1)+q*sin(2*(theta2+45)*%pi*180**-1) //Degrees

//Resultant stress
p=((p_n**2+q_max**2)**0.5) //N/mm**2

phi=atan(p_n*q_max**-1)*(180*%pi**-1) //Degrees

//Inclination to the plane
alpha=((theta2+45))+(phi )//Degree


//Answer in book is incorrect of alpha ie41.25

//Result
printf("\n Planes of max shear stress: %0.2f  N/mm**2",p_n)
printf("\n                             %0.2f  N/mm*2",q_max)
printf("\n Resultant Stress is %0.2f  N/mm**2",p)
