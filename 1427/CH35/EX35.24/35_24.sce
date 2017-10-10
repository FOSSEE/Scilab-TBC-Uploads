//ques-35.24
//Calculating wavelength at which anti Stokes line appear
clc
w1=4358*10^-10;//sample wavelength (in m)
w2=4447*10^-10;//wavelength for Raman shift (in m)
v_raman=(1/w1)-(1/w2);
v_anti=(1/w1)+v_raman;
w=10^10/v_anti;
printf("The wavelength required is %.0f armstrong.",w);
