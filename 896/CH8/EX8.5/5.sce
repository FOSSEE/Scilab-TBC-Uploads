clc
//Example 8.5
//Calculate the pressure and density at a pt where temperature ratio is 1.8 and initial pressure and density are given
ratio_T=1.8//dimentionless
P1=2//bar
k=1.4//dimentionless
P2=P1/ratio_T^(k/(k-1))//bar
printf("The pressure where temperature ratio is 1.8 and initial pressure is 2 bar is %f bar\n",P2);
rho1=2.39//Kg/m^3
rho2=rho1/ratio_T^(1/(k-1))//Kg/m^3
printf("The density where temperature ratio is 1.8 and initial density is 2.39 Kg/m^3 is %f Kg/m^3",rho2);