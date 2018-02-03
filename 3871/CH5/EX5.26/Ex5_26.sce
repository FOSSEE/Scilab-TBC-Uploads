//=============================================================
//Chapter 5 example 26

clc;
clear all;

//variable declaration
Vmax        = 100;          //maximum value of applied voltage in V
R           = 2;            //resistance in Ω


//calculations
Imax        = Vmax/R;           //maximum value of current flowing through instruments in A
mprintf("x  = (Imax^2)*((sin(theta))^2)");
//Irms      = sqrt((1/2*%pi)*{(integral(x*dtheta))}(0-%pi))
Irms        = sqrt(((Imax^2)/(2*%pi))*((%pi/2)));
mprintf("\n y  = (Imax*sin(theta))");
//Iav         = sqrt((1/2*%pi)*{(integral(y*dtheta))}(0-%pi)
Iav         = Imax/%pi;


//result
mprintf("\nthe hot-wire ammeter reads rms value = %3.2f A",Irms);
mprintf("\nmoving coil ammeter reads average value = %3.2f A",Iav);


