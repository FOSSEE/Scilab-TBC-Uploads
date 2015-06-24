//fiber optic communications by joseph c. palais
//example 2.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
M=1//magnification
f=1e-3// focal length in m
do=2*f//since di=do object image distance in m
mprintf('object and image distance for unity magnification=%fm',do)
//to find
 for j = 1:5
     dobyf(j)=1+j*0.2//object image distance to focal length in m
    M(j)=1/(dobyf(j)-1)//magnification
    end;
plot2d(dobyf,M)
xtitle( 'Generalized results Magnification as a function of object position', 'do/f', 'Magnification', boxed = 1 );
