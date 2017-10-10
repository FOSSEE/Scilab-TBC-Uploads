
clear//

//Variable Declaration
sigma_x=8000 //Stress in x in psi
sigma_y=4000 //Stress in y in psi
tau_xy=3000 //Stress in xy in psi

//Calculations
R=sqrt(((sigma_x-sigma_y)*0.5)**2+tau_xy**2) //Resultant Stress in psi

//Principal Stresses
sigma1=(sigma_x+sigma_y)*0.5+R //Principal Stress in psi
sigma2=(sigma_x+sigma_y)*0.5-R //Principal Stress in psi

//Principal Direction
theta1=atan(2*tau_xy*(sigma_x-sigma_y)**-1)*0.5*180*%pi**-1 //Principal direction in degrees
theta2=theta1+90 //Second pricnipal direction in degrees

//Normal Stress
sigma_xdash=0.5*(sigma_x+sigma_y)+0.5*(sigma_x-sigma_y)*cos(2*theta1*%pi*180**-1)+tau_xy*sin(2*theta1*%pi*180**-1)

//Result
printf("\n The principal stresses are as follows")
printf("\n sigma1= %0.0f psi and sigma2= %0.0f psi",sigma1,sigma2)
printf("\n The corresponding directions are")
printf("\n Theta1= %0.1f degrees and Theta2= %0.1f degrees",theta1,theta2)
