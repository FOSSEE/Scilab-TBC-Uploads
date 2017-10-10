//ques-25.24
//Calculating mean free path for hydrogen gas
clc
visc=8.41*10^-6;//coefficient of viscosity (in Pas)
den=9*10^-2;//density (in kg/kL)
Cavg=1.69*10^3;//average velocity (in m/s)
mfp=(2*visc)/(den*Cavg);
printf("The mean free path required is %.2f*10^-7 m.",mfp*10^7);
