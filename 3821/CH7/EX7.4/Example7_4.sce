///Chapter No 7 Fluid Mechanics
///Example 7.4 Page No:116
////Find mass density of liquid
//Input data
clc;
clear;
dy=21*10^-3;      //Horizontal plates in mm
du=1.4;            //Relative velocity between the plates in m/s
mu=0.6;            //Oil of viscosity 6 poise in Ns/m^2

///Calculation
tau=mu*(du/dy);  //Shear in the oil in N/m^2

///Output
printf('shear in the oil= %f N/m^2 \n',tau);
