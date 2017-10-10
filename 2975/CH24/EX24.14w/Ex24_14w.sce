//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 24_14w

clc;clear;
//Given Data

area=8*10^-3;       //Area of cylinder (Unit: m^2)
temperature_initial=300;        //Initial temperature (Unit: Kelvin)
volume_initial=2.4*10^-3;       //Initaial volume (Unit: m^3)
distance=0.1;       //Distance covered by the piston when heated(Unit : m)
force_constant=8000;    //Force constant of the spring (Unit :N/m)
init_pressure=1*10^5;   //Initial Pressure (atmospheric pressure)  (Unit: Pa)

//Formula:          (Force=spring constant X Distance ) 
//Calculation

final_pressure=init_pressure+(force_constant*distance/area);    //Calculating final pressure (Unit : Pascal)
volume_final=volume_initial+(area*distance);        //Calculating final volume (Unit : m^3)

temperature_final=final_pressure*volume_final*temperature_initial/(init_pressure*volume_initial);       //Calculating final volume (Unit : Kelvin)

disp(temperature_final,"The final temperatue is (Unit: Kelvin)");
