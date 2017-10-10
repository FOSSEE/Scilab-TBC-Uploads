
clear//

//Variable Declaration
sigma_x=40 //Stress in x in MPa
sigma_y=-100 //Stress in y in MPa
tau_xy=-50 //Shear stress in MPa

//Calculations
tau_max=sqrt(((sigma_x-sigma_y)*0.5)**2+tau_xy**2) //Maximum in-plane shear in MPa

//Orientation of Plane
theta1=atan(-((sigma_x-sigma_y)*(2*tau_xy)**-1))*180*%pi**-1*0.5 //Angle in Degrees
theta2=theta1+90 //Angle in degrees

//Plane of max in-plane shear
tau_x_y=-0.5*(sigma_x-sigma_y)*sin(2*theta1*%pi*180**-1)+tau_xy*cos(2*theta1*%pi*180**-1) 

//Normal Stress
sigma=(sigma_x+sigma_y)*0.5 //Stress in MPa

//Result
printf("\n The maximum in-plane Shear is %0.0f MPa",tau_x_y)
