
clear//

//Vairable Declaration
sigma_x=40 //Stress in x in MPa
sigma_y=20 //Stress in y in MPa
tau_xy=16 //Shear in xy in MPa

//Calculations
sigma=(sigma_x+sigma_y)*0.5 //Normal Stress in MPa
R=sqrt(((sigma_x-sigma_y)*0.5)**2+tau_xy**2) //Resultant Stress in MPa

//Part 1
sigma1=sigma+R //Principal Stress in MPa
sigma2=sigma-R //Principal Stress in MPa
theta=atan(tau_xy*((sigma_x-sigma_y)*0.5)**-1)*180*%pi**-1*0.5 //Orientation in degrees

//Part 2
tau_max=18.87 //From figure in MPa

//Part 3
sigma_xdash=sigma+tau_max*cos((100-theta*2)*%pi*180**-1) //Stress in MPa
sigma_ydash=sigma-tau_max*cos((100-theta*2)*%pi*180**-1) //Stress in MPa
tau_x_y=tau_max*sin((100-2*theta)*%pi*180**-1) //Shear stress in MPa

//Result
printf("\n The principal Stresses are")
printf("\n Sigma1= %0.1f MPa and Sigma2= %0.1f MPa",sigma1,sigma2)
printf("\n The Principal Plane is at %0.0f degrees",theta)
printf("\n The  Maximum Shear Stress is %0.3f MPa",tau_max)
printf("\n Sigma_x= %0.0f MPa and Sigma_y= %0.2f MPa",sigma_xdash,sigma_ydash)
printf("\n Tau_xy= %0.2f MPa",tau_x_y)
