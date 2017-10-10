//Chapter 3 : Polarization

clear;

//Variable declaration
myu=1.55                //refractive index of glass

//Calculations
theta_p=(atan(myu))*180/%pi
theta_r=(asin(sin((theta_p*%pi/180))/1.55))*180/%pi
Total=theta_p+theta_r

//Result
mprintf("Angle of polarization= %f degrees",theta_p)
mprintf("\nAngle between reflected and refracted ray= %d degrees",Total)

