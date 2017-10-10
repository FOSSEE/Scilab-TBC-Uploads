//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 7.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
n1=1.5;//refractive index of film
n2=1.0;//refractive index of cover
d=.555e-6;//thickness of film in m


//Case(1)
lambda0=1.3e-6;//wavelength in m
k0=2*(%pi)/lambda0;//free space wave number in rad/m
V=k0*d*sqrt((n1^2)-(n2^2));//dimensionless waveguide parameter
mprintf("V=%f \n",V);//The answers vary due to round off error

//To find Xi for symmetric TE mode
deff('t=f(Xi)','t=V/2*cos(Xi)-Xi');//Rearranging the terms of eqn for symmetric TE modes i.e. 'ξtanξ=((V/2)^2-ξ^2)', we get 'ξ=V/2*cos(ξ)'
Xi0=0;//Starting value of Xi
Xi=fsolve(Xi0,f);//Root of eqn 't=0'
b=1-(Xi^2)/(V^2/4);//dimensionless propagation constant
mprintf("\n b=%f",b);//The answers vary due to round off error
B=sqrt(b*((n1^2)-(n2^2))+(n2^2));
mprintf("\nBeta/k0=%f",B);//The answers vary due to round off error

//To find Xi for symmetric TM mode
deff('t=f(Xi)','t=(1-(n1/n2)^2)*(Xi^2)+(V^2)/4-(Xi*sec(Xi))^2');//Rearranging the terms of eqn for symmetric TE modes i.e. 'ξtanξ=((V/2)^2-ξ^2)', we get 'ξ=V/2*cos(ξ)'
Xi0=0;//Starting value of Xi
Xi=fsolve(Xi0,f);//Root of eqn 't=0'
b=1-(Xi^2)/(V^2/4);//dimensionless propagation constant
mprintf("\n b=%f",b);//The answer provided in the textbook is wrong
B=sqrt(b*((n1^2)-(n2^2))+(n2^2));
mprintf("\nBeta/k0=%f",B);//The answer provided in the textbook is wrong
