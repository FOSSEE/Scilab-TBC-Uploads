clc
//Example 10.3
//Calculate the work requird per pound mole for a 100% efficient isothermal and adiabatic compressor
R=1.987//Btu/lbmol/R (universal gas constant)
T=528//R (Rankine temperature scale)
ratio_P=10//dimentionless
//for isothermal compressor
W1=R*T*log(ratio_P)//Btu/lbmol
printf("The work required per pound mole for a 100 percent efficient isothermal compressor is %f ",W1);
printf("Btu/lbmol\n");
//for adiabatic compressor
gama=1.4//dimentionless
W2=(gama/(gama-1))*R*T*(ratio_P^((gama-1)/gama)-1)//Btu/lbmol
printf("The work required per pound mole for a 100 percent efficient adiabatic compressor is %f ",W2);
printf("Btu/lbmol");