//Example 3.4
//Program to estimate critical radius of curvature at which large 
//bending loss occur

clear;
clc ;
close ;

//Given data for part (a)
n1=1.500;        //metre - LENGTH
delta=0.03;      //*100 percent - RELATIVE REFRACTIVE INDEX DIFFERENCE
lambda=0.82*10^(-6); //metre - OPERATING WAVELENGTH

//Calculation of the radius of curvature of Multi Mode fiber
n2=sqrt(n1^2-2*delta*n1^2);
Rc=3*n1^2*lambda/(4*%pi*(n1^2-n2^2)^(3/2));

//Given data for part (b)
n1=1.500;        //metre - LENGTH
delta=0.003;     //*100 percent - RELATIVE REFRACTIVE INDEX DIFFERENCE
lambda=1.55*10^(-6); //metre - OPERATING WAVELENGTH
d=8*10^(-6);     //metre - CORE DIAMETER

//Calculation of the radius of curvature of Single Mode fiber
n2=sqrt(n1^2-2*delta*n1^2);
a=d/2;
lambda_c=2*%pi*a*n1*sqrt(2*delta)/2.405;
Rcs=20*lambda*(2.748-0.996*lambda/lambda_c)^(-3)/(n1-n2)^(3/2);

//Displaying the Results in Command Window
printf("\n\n\t (a)The radius of curvature of Multi Mode fiber is %1.0f um.",Rc/10^(-6));
printf("\n\n\t (b)The radius of curvature of Single Mode fiber is %1.0f mm.",Rcs/10^(-3));