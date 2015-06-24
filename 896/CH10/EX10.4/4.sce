clc
//Example 10.4
//Calculate the work requird per pound mole for a 100% efficient 2 stage adiabatic compressor
R=1.987//Btu/lbmol/R (universal gas constant)
T=528//R (Rankine temperature scale)
ratio_P1=3//dimentionless
ratio_P2=10/3//dimentionless
gama=1.4//dimentionless
W=(gama/(gama-1))*R*T*((ratio_P1^((gama-1)/gama)-1)+(ratio_P2^((gama-1)/gama)-1))//Btu/lbmol
printf("The work required per pound mole for a 100 percent efficient adiabatic compressor is %f ",W);
printf("Btu/lbmol");