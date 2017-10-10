//Optical Fiber communication by A selvarajan
//example 2.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
lamda1=0.7//wavelength in um
lamda2=1.3//wavelength in um
lamda3=2//wavelength in um
f_lambda1=(303.33*(lamda1^-1)-233.33)//equation for lambda1
f_lambda2=(303.33*(lamda2^-1)-233.33)//equation for lambda2
f_lambda3=(303.33*(lamda3^-1)-233.33)//equation for lambda3
mprintf("Material dispersion at Lambda 0.7um=%f",f_lambda1)
mprintf("\nMaterial dispersion at Lambda 1.3um=%f",f_lambda2)//The answers vary due to round off error
mprintf("\nMaterial dispersion at Lambda 2um=%f",f_lambda3)//The answers vary due to round off error
mprintf('\nIts is a standard silica fiber')
