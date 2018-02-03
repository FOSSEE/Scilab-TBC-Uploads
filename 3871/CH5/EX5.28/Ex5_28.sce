//=============================================================
//Chapter 5 example 28

clc;
clear all;


//variable declaration
V           = 230;          //RMS value of voltage applied in volts
r1          = 115;       //resistance in Ω
r2          = 115;       //resistance in Ω
r3          = 575;       //resistance in Ω



//calculations
Vmax      =230*sqrt(2);
R1      =r1+r2;             //resiatance in one directions in  Ω
R2      =r2+r3;             //resiatance in other directions in  Ω
Imax1       = Vmax/R1;          //current(maximum value) in one direction in A
Imax2       = Vmax/R2;          //current(maximum value) in other direction in A    
//Iav       = Iav1-Iav2
//x         = (Imax1*sin(theta))
//Iav       = ((1/2*%pi)*{(integral(x*dtheta))}(0-%pi)))
//y         = (Imax2*sin(theta))
//Iav       = ((1/2*%pi)*{(integral(y*dtheta))}(0-%pi)))
z1          =-((cos(180*%pi/180))-cos(0))
z2          = -((cos(180*%pi/180))-cos(0))
A         = ((Imax1*z1)-(Imax2*z2));
Iav     = A/(2*%pi);
//x1         = (Imax1*sin(theta))^2
//I1       = ((1/2*%pi)*{(integral(x1*dtheta))}(0-%pi)))
//y1         = (Imax2*sin(theta))^2
//I2       = ((1/2*%pi)*({(integral((1-cos(2*theta))/2*dtheta))}(0-%pi)))-{(integral((1-cos(2*theta))/2*dtheta))}(0-%pi)))
//Irms= I1+I2
//Irms  = ((1/2*%pi)*{(integral(y1*dtheta))}(0-%pi)))
Z1          =-((cos(2*180*%pi/180))-cos(180*%pi/180));
Z2          = -((cos(2*180*%pi/180))-cos(180*%pi/180));
Irms1       = (((Imax1^2)/(2*2*%pi))*(%pi-0))+(((Imax2^2)/(2*2*%pi))*(%pi-0))-Z1+Z2
Irms        =sqrt(Irms1);
P           = (1/2)*(((V^2)/R1)+((V^2)/R2));
Irms11      =   1;
Irms22      = 1/3;
Pd          = (((Irms11^2)*r2)+((Irms22^2)*r3))/2;


//result
mprintf("Iav   = %3.2f A",Irms1);
mprintf("\npower taken from the mains = %3.2f",P);
mprintf("\npower dissipated in rectifying device =%3.2f W",Pd);


