clc;
//Example 3.3
//Page no. 26
printf("Example 3.3 Page no. 26\n\n")
//given at 30 degree temerature
//properties of water from appendix A.2 density(rho),surface tension(sigma)
rho=996
sigma=0.071
printf("rho=%f\kg/m^3\n surface tension (sigma)=%f N/m\n",rho,sigma)
theta=0//negligible angle of contact
g=9.807
h=0.001//less than one milimeter
printf("theta=%f degree \n g=%f m/s^2\n h=%f m\n",theta,g,h)
R=(2*sigma*cos(0))/(rho*g*h)//by capiilary rise equation
D=2*R
printf("R=%f m\n D=%f m\n",R,D)
//if the tube diameter is greater than 0.029075 mm, then the capillary rise will be less than 1mm
