
clear//

//Variable Declaration
theta=(60*%pi)/180 //Angle in radians (Twice as declared)
sigma_x=30 // Stress in x in MPa
sigma_y=60 //Stress in y in MPa
tau_xy=40 //Stress in MPa

//Calcualtions
sigma_xdash=0.5*(sigma_x+sigma_y)+0.5*(sigma_x-sigma_y)*cos(theta)+tau_xy*sin(theta) //Stress at x' axis in MPa
sigma_ydash=0.5*(sigma_x+sigma_y)-0.5*(sigma_x-sigma_y)*cos(theta)-tau_xy*sin(theta) //Stress at y' axis in MPa
tau_x_y=-0.5*(sigma_x-sigma_y)*sin(theta)+tau_xy*cos(theta) //Stress at x'y' in shear in MPa
//Result
printf("\n The new stresses at new axes are as follows")
printf("\n sigma_x= %0.1f MPa sigma_y= %0.1f MPa",sigma_xdash,sigma_ydash)
printf("\n And tau_xy= %0.0f MPa",tau_x_y)
