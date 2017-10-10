
clear//

//Variable Declaration
ex=800*10**-6 //Strain in x (no units)
ey=200*10**-6 //Strain in y(no units)
y_xy=-600*10**-6 //Strain in xy(no units)

//Calculations
e_bar=(ex+ey)*0.5 //Strain 
R=sqrt(2*300**2)*10**-6 //Resultant 

//Part 1
e1=e_bar+R //Strain in Principal Axis(no units)
e2=e_bar-R //Strain in Principal Axis(no units)

//Part 2
alpha=15*180**-1*%pi //From the Mohr Circle in degrees
e_xbar=e_bar-(R*cos(alpha)) //Strain in x (no units)
e_ybar=e_bar+(R*cos(alpha)) //Strain in y(no units)

shear_strain=2*R*sin(alpha) //Shear follows 

//Result
printf("\n The principal Strains are")
printf("\n e1= %0.6f e2= %0.6f ",e1,e2)
printf("\n The follows components are")
printf("\n ex= %0.6f ey= %0.6f y_xy= %0.6f ",e_xbar,e_ybar,shear_strain)
