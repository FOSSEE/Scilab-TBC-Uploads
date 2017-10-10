//fiber optic communications by joseph c. palais
//example 2.6
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
spotsize=1e-3//spot size in m
lambda=0.82e-6//wave length in m
d1=10//distance in m
d2=1e3//distance in m
d3=10e3//distance in m
//to find
theta=2*lambda/(%pi*spotsize)//divergence angle in radians
theta_d=theta*180/%pi//divergence angle in degrees
wo1=lambda*d1/(%pi*spotsize)//spot size in m
wo2=lambda*d2/(%pi*spotsize)//spot size in m
wo3=lambda*d3/(%pi*spotsize)//spot size in m
//multiplication factor 1e3 in result convert m to mm
mprintf("Divergence angle=%fdegree",theta_d)
mprintf("\nspot size1=%fmm",wo1*1e3)
mprintf("\nspot size2=%fmm",wo2*1e3)
mprintf("\nspot size3=%fmm",wo3*1e3)
